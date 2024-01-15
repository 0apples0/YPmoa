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
	@RequestMapping(value="/community", method=RequestMethod.GET)// 전체 리스트 출력
	//@GetMapping("/community") 
	public void list(Criteria cri, Model model) {
		log.info("-------controller in list ------");
		log.info(cri);
		
		int total = communityService.getTotalAmount(cri); //전체 게시물 갯수
		log.info(total);		
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
		log.info("-------controller out list ------");

		//log.info("Ajax");
		//return communityService.getPage(cri);
	}
	
	@GetMapping("/get")
	public void getCommunity(@RequestParam("bno") Integer bno, Model model) {
		model.addAttribute("vo", communityService.getBoard(bno));
	}
	
	// Ajax가 호출하는 메서드, 반환타입은 json으로 설정하라는 주석
	@ResponseBody
	@RequestMapping(value="/community", method=RequestMethod.POST)
	public List<CommunityVO> getList(Criteria cri){
		log.info("Ajax");
		return communityService.getPage(cri); 
	}
}
