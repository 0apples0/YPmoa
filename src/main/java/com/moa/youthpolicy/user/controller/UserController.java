package com.moa.youthpolicy.user.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.moa.youthpolicy.user.domain.UserVO;
import com.moa.youthpolicy.user.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user/*")
@AllArgsConstructor
@Log4j
public class UserController {
	private final UserService userService;
	
	//---------------------보빈---------------------
	// 마이페이지 조회
	@GetMapping("/mypage")
	public String get(@RequestParam("Email") String Email,Model model) {
		UserVO user = userService.get(Email);
		 if (user != null) {
		        model.addAttribute("vo", user);
		        return "mypage"; // user 값이 있으면 마이페이지
		 }
		 return "index"; // 없으면 메인으로 보냄
	}
	
	// 마이페이지 회원 정보 및 맞춤 조건 수정
	@PostMapping("/modify")
	public String modify(@ModelAttribute("vo") UserVO modifyUser) {
	    userService.modify(modifyUser);
	    // 수정된 사용자의 이메일을 이용하여 마이페이지로 리다이렉트
	    return "redirect:/mypage?Email=" + modifyUser.getEmail();
	}
	
	// 마이페이지 회원 탈퇴	
	@PostMapping("/remove")
	public String remove(HttpSession httpSession) {
		String Email = (String) httpSession.getAttribute("Email");
		userService.removeUser(Email);
		httpSession.invalidate();
		log.info("회원탈퇴 완료 : "+Email);
		// 탈퇴 후 로그아웃 자동으로 안되면 return "redirect:/user/logout";으로 해봐야지..
		return "redirect:/index";
	}
	
}
