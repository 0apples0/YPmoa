package com.moa.youthpolicy.community.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.JsonObject;
import com.moa.youthpolicy.common.BoardReportVO;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.community.domain.CommunityCommentVO;
import com.moa.youthpolicy.community.domain.CommunityVO;
import com.moa.youthpolicy.community.service.CommunityService;
import com.moa.youthpolicy.policy.domain.PolicyVO;
import com.moa.youthpolicy.suggest.domain.SuggestVO;
import com.moa.youthpolicy.user.domain.UserVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/community/*") // community
@AllArgsConstructor //생성될 때 communityService 주입
@Log4j
public class CommunityController {
	private final CommunityService communityService;
	
	@ResponseBody
	@PostMapping("/get5community")
	public List<CommunityVO> getfiveBoard(){
		List<CommunityVO> list = communityService.getfiveboard();
		return list;
	}
	
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
		
		
		int total = communityService.getCommentTotalAmount(cri);
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
	}
	
	//글 작성 페이지로 이동
	@GetMapping("/write")
	public void getWrite() {}
	//글 작성
	@PostMapping("/write") 
	public String write(CommunityVO communityVO, RedirectAttributes rttr, HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("user");
	
		if(user == null) {
			return "redirect:/user/login";
		}
	
		communityVO.setWriter(user.getNick());
		communityVO.setUserType(user.getUserType());
	
		communityService.write(communityVO);
		rttr.addFlashAttribute("result", "success");
		return "redirect:/community/community";
	}	

	//글 삭제
	@PostMapping("/remove")
	public String removePage(@RequestParam("bno") Integer bno, RedirectAttributes rttr) {
	    if (communityService.removeBoard(bno)) {
	        rttr.addFlashAttribute("result", "success");
	    }
	    return "redirect:/community/community";
	}
	
	//글 수정
	@GetMapping("/modify")
	public void getCommunity(@RequestParam("bno") Integer bno, Model model) {
		model.addAttribute("vo", communityService.getBoard(bno));
	}
	
	@PostMapping("/modify")
    public String modifyPage(@RequestParam("bno") Integer bno,
							 @RequestParam("category") String category,
							 @RequestParam("title") String title,
							 @RequestParam("content") String content,
							 @RequestParam("region") String region,
							 RedirectAttributes rttr) {
		CommunityVO vo = communityService.getBoard(bno);
		vo.setCategory(category);
		vo.setTitle(title);
		vo.setContent(content);
		vo.setRegion(region);
		
		if (communityService.modifyBoard(vo)) {
		rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/community/get?bno=" + bno;
	}
	
	//댓글 작성
	@ResponseBody
	@RequestMapping(value="/writeComment",method={RequestMethod.GET, RequestMethod.POST})
	public void addComment(@RequestParam("bno") Integer bno, CommunityCommentVO comment) {
		communityService.writeComment(comment);	
	}	
	
	// 댓글 삭제
	@RequestMapping(value="/deleteComment", method={RequestMethod.GET, RequestMethod.POST})
	public String delCommunityComment(@RequestParam("cno") Integer cno, @RequestParam("bno") Integer bno){
		communityService.delCommunityComment(cno);
		return "redirect:/community/get?bno=" + bno;
	}
	
	// 댓글 수정
	@ResponseBody
	@RequestMapping(value="/modifyComment", method={RequestMethod.GET, RequestMethod.POST})
	public void modCommunityComment(@RequestParam("bno") Integer bno, CommunityCommentVO comment){
		communityService.modCommunityComment(comment);
	}	

	// Ajax가 호출하는 메서드, 반환타입은 json으로 설정하라는 주석
	@ResponseBody
	@RequestMapping(value="/getList", method={RequestMethod.GET, RequestMethod.POST})
	public List<CommunityVO> getList(Criteria cri, Model model){
		log.info("Ajax 호출"+cri.toString());
		return communityService.getPage(cri);
	}
	
	// Ajax가 호출하는 메서드, 반환타입은 json으로 설정하라는 주석
	@ResponseBody
	@RequestMapping(value="/getCommentList", method={RequestMethod.GET, RequestMethod.POST})
	public List<CommunityCommentVO> getCommentList(Criteria cri, Model model){
		log.info(cri.toString());
		log.info("댓글 Ajax 호출 + bno"+ cri.getBno());
		model.addAttribute("commentvo", communityService.getCommentPage(cri));
		return communityService.getCommentPage(cri);
	
	}
	
	// Ajax가 호출하는 메서드, 반환타입은 json으로 설정하라는 주석
	@ResponseBody
	@RequestMapping(value="/getBestCommentList", method=RequestMethod.POST)
	public List<CommunityCommentVO> getBestCommentList(Criteria cri, Model model){
		log.info(cri.toString());
		log.info("댓글 Ajax 호출 + bno"+ cri.getBno());
		model.addAttribute("bestcommentvo", communityService.getBestCommentPage(cri));
		
		return communityService.getBestCommentPage(cri);
	
	}
	
	@ResponseBody
	@PostMapping("/toggleLike")
	public int toggleLike(CommunityVO vo) {
		return communityService.likeToggle(vo).getLike();
	}

	@ResponseBody
	@PostMapping("/toggleCommentLike")
	public int toggleCommentLike(CommunityCommentVO vo) {
		log.info(vo.toString());
		return communityService.likeCommentToggle(vo).getLike();
	}
	
    // 게시글 신고
	@ResponseBody
	@PostMapping("/reportBoard")
	public boolean reportBoard(BoardReportVO vo) {
		log.info(vo.toString());
		return communityService.reportBoard(vo);
	}
	
	
	// 새글 알람
	@ResponseBody
	@GetMapping("/newAlarm")
	public  List<Integer> endAlarm() {
		 List<Integer> response = communityService.newBoardAlarm();
		 log.info("새글 번호: "+response);
		return response;
	
		
	}
	
	// 댓글 갯수 가져오기
	@ResponseBody
	@GetMapping("/commentNm")
	public int commentNm(Criteria cri) {
		int commentNm = communityService.getcommentNm(cri);
		log.info("댓글개수"+commentNm);
		return commentNm;
	}
	
	
}
