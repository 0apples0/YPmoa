package com.moa.youthpolicy.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.moa.youthpolicy.login.naver.NaverAuthResponse;
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

	// ---------------------보빈---------------------
	@GetMapping("/mypage")
	public String getMypage(@RequestParam("Email") String Email, Model model) {
		log.info("마이페이지 조회");
		UserVO user = userService.get(Email);
		if (user != null) {
			model.addAttribute("vo", user);
			return "mypage"; // user 媛믪씠 �엳�쑝硫� 留덉씠�럹�씠吏�
		}
		return "index"; // 없으면 메인으로 보냄
	}
	
	
	@GetMapping({"/remove","/modify"})
	public void get(@RequestParam("Email") String Email, Model model) {
		model.addAttribute("vo", userService.get(Email));
	}

	@PostMapping("/modify")
	public String modify(@ModelAttribute("vo") UserVO modifyUser) {
		userService.modify(modifyUser);
		return "redirect:/mypage?Email=" + modifyUser.getEmail();
	}

	@PostMapping("/remove")
	public String remove(HttpSession httpSession) {
		String Email = (String) httpSession.getAttribute("Email");
		userService.removeUser(Email);
		httpSession.invalidate();
		log.info("�쉶�썝�깉�눜 �셿猷� : " + Email);
		return "redirect:/index";
	}


	@GetMapping("/naver_login")
	public String naverLogin() {
	    String uri = userService.getUri();
	    return "redirect:" + uri;
	}
	
	@GetMapping("/n_login")
	public String n_login(@ModelAttribute("NaverAuth") NaverAuthResponse auth) {
	    String token = userService.getToken(auth); 
	    log.info(token);
	    return "redirect:" + token;
	}
	

}
