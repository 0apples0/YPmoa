package com.moa.youthpolicy.community.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.community.domain.CommunityCommentVO;
import com.moa.youthpolicy.community.domain.CommunityVO;
import com.moa.youthpolicy.community.service.CommunityService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/community/*") // community
@AllArgsConstructor //생성될 때 communityService 주입
@Log4j
public class CommunityController {
	private final CommunityService communityService;
	
	
	@RequestMapping(value="/community", method= {RequestMethod.GET, RequestMethod.POST})// 전체 리스트 출력
	//@GetMapping("/community") 
	public void list(Criteria cri, Model model) {
		log.info("contorller : "+ cri.getWriter());
		log.info("키워드 로그: "+cri.getKeyword());
		
		int total = communityService.getTotalAmount(cri); //전체 게시물 갯수
		log.info("totalpage: "+total);		
		PageDTO pageResult = new PageDTO(cri, total);
		log.info("endPage = " + pageResult.getEndPage());
		model.addAttribute("pageMaker", pageResult);

		log.info("-------controller out list ------");
		log.info("작성자 누구: "+cri.getWriter());

	}
	
	//게시글 자세히 보기 시, 댓글 리스트도 함께 출력
	@RequestMapping(value="/get", method={RequestMethod.GET, RequestMethod.POST})
	public void getCommunity(@RequestParam("bno") Integer bno, Criteria cri, Model model) {
		
		model.addAttribute("vo", communityService.getBoard(bno));
		int total = communityService.getCommentTotalAmount(bno); //전체 댓글 갯수
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
		log.info("댓글 갯수 제발 잘 가져와줘: "+total);
	}
	
	//글 작성 페이지로 이동
	@GetMapping("/write")
	public void getWrite() {}
	
	// Ajax가 호출하는 메서드, 반환타입은 json으로 설정하라는 주석
	@ResponseBody
	@RequestMapping(value="/getList", method=RequestMethod.POST)
	public List<CommunityVO> getList(Criteria cri, Model model){
		log.info("Ajax 호출"+cri.toString());

		return communityService.getPage(cri);
	}
	
	// Ajax가 호출하는 메서드, 반환타입은 json으로 설정하라는 주석
	@ResponseBody
	@RequestMapping(value="/getCommentList", method=RequestMethod.POST)
	public List<CommunityCommentVO> getCommentList(Criteria cri, Model model){
		log.info(cri.toString());
		log.info("댓글 Ajax 호출 + bno"+ cri.getBno());
		return communityService.getCommentPage(cri);
	
	}
}
