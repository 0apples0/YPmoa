package com.moa.youthpolicy.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	// ---------------------蹂대퉰---------------------
	// 留덉씠�럹�씠吏� 議고쉶
	@GetMapping("/mypage")
	public String get(@RequestParam("Email") String Email, Model model) {
		UserVO user = userService.get(Email);
		if (user != null) {
			model.addAttribute("vo", user);
			return "mypage"; // user 媛믪씠 �엳�쑝硫� 留덉씠�럹�씠吏�
		}
		return "board/index"; // �뾾�쑝硫� 硫붿씤�쑝濡� 蹂대깂
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

	// 嫄�
	@GetMapping("/naver_login")
	public String naverLogin() {
	    System.out.println("helloworld");
	    String uri = userService.getUri();
	    return "redirect:" + uri;
	}
	

}
