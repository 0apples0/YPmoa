package com.moa.youthpolicy.admin.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moa.youthpolicy.admin.service.AdminService;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.community.controller.CommunityController;
import com.moa.youthpolicy.community.domain.CommunityCommentVO;
import com.moa.youthpolicy.community.domain.CommunityVO;
import com.moa.youthpolicy.community.service.CommunityService;
import com.moa.youthpolicy.user.domain.UserVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Controller
@RequestMapping("/adminmenu/*") // community
@AllArgsConstructor //생성될 때 communityService 주입
@Log4j
public class AdminController {
	
	private final AdminService adminService;
	
	@GetMapping("/adminmenu")
	public void adminmenu() {}	
	
	// 유저 전체 리스트 출력
	@RequestMapping(value="/userget", method= {RequestMethod.GET, RequestMethod.POST})
	public void list(Criteria cri, Model model) {
		log.info("contorller : ");
		
		int total = adminService.getTotalAmount(cri); //전체 회원 수 출력
		log.info("totalpage: "+total);		
		PageDTO pageResult = new PageDTO(cri, total);
		log.info("endPage = " + pageResult.getEndPage());
		model.addAttribute("pageMaker", pageResult);
	}	
	
	@ResponseBody
	@RequestMapping(value="/getUserList", method={RequestMethod.GET, RequestMethod.POST})
	public List<UserVO> getList(Criteria cri, Model model){
		log.info("Ajax 호출"+cri.toString());
		return adminService.getPage(cri);
	}
	
	// 신고 댓글 전체 리스트 출력
	@RequestMapping(value="/reportcommentget", method= {RequestMethod.GET, RequestMethod.POST})
	public void commentList(Criteria cri, Model model) {
		log.info("contorller : ");
		
		int total = adminService.getTotalCommentAmount(cri); //전체 신고 댓글 수 출력
		log.info("totalpage: "+total);		
		PageDTO pageResult = new PageDTO(cri, total);
		log.info("endPage = " + pageResult.getEndPage());
		model.addAttribute("pageMaker", pageResult);
	}	

	@ResponseBody
	@RequestMapping(value="/getCommentList", method={RequestMethod.GET, RequestMethod.POST})
	public List<CommunityCommentVO> commentGetList(Criteria cri, Model model){
		log.info("Ajax 호출"+cri.toString());
		return adminService.getCommentPage(cri);
	}
	
}
