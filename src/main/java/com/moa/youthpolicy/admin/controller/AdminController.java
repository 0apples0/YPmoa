package com.moa.youthpolicy.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moa.youthpolicy.admin.service.AdminService;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.community.controller.CommunityController;
import com.moa.youthpolicy.community.service.CommunityService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Controller
@RequestMapping("/adminmenu/*") // community
@AllArgsConstructor //생성될 때 communityService 주입
@Log4j
public class AdminController {
	private final AdminService adminService;
	
	@RequestMapping(value="/userget", method= {RequestMethod.GET, RequestMethod.POST})// 전체 리스트 출력
	public void list(Criteria cri, Model model) {
		log.info("contorller : ");
		
		int total = adminService.getTotalAmount(cri); //전체 회원 수
		log.info("totalpage: "+total);		
		PageDTO pageResult = new PageDTO(cri, total);
		log.info("endPage = " + pageResult.getEndPage());
		model.addAttribute("pageMaker", pageResult);

		log.info("-------controller out list ------");
		log.info("작성자 누구: "+cri.getWriter());

	}	
	@GetMapping("/adminmenu")
	public void adminmenu() {}	
}
