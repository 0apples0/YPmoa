package com.moa.youthpolicy.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.community.service.CommunityService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/community/*") // community
@AllArgsConstructor //생성될 때 communityService 주입
@Log4j
public class CommunityController {
	private final CommunityService communityService;
	
	@GetMapping("/community") // 전체 리스트 출력
	public void list(Criteria cri, Model model) {
		log.info("-------controller in list ------");
		log.info(cri);
		
		int total = communityService.getTotalAmount(cri); //전체 게시물 갯수
		log.info(total);		
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
		log.info("-------controller out list ------");

	}
}
