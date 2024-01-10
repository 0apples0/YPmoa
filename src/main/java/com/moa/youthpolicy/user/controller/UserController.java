package com.moa.youthpolicy.user.controller;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
		model.addAttribute("user", user);
		return "user/mypage";
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
	public String remove(HttpSession httpSession, Model model) {
		String Email = (String) httpSession.getAttribute("Email");
		userService.removeUser(Email);
		httpSession.invalidate();
		log.info("회원탈퇴 : " + Email);
		return "redirect:/index";
	}


	@GetMapping("/naver_login")
	public String naverLogin() {
	    String uri = userService.getUri();
	    return "redirect:" + uri;
	}
	
	@GetMapping("/google_login")
	public String googleLogin() {
		System.out.println("google login 시작");
	    String uri = userService.doGoogleLogin();
	    return "redirect:" + uri;
	}
/*	
	@GetMapping("/getGoogleCode")
	@ResponseBody
	public void g_login(HttpServletRequest request) {
		Map<String, String> param = new HashMap<String, String>();
		System.out.println("code: " + request.getParameter("code"));
		
		param.put("code", request.getParameter("code"));
		
		System.out.println("param : " + param.toString());
		userService.getGoogleToken(param);	// 토큰 + 고객 정보 + (로그인/회원)

	}
*/	
	@GetMapping("/getGoogleCode")
	public String g_login(HttpServletRequest request, Model model) {
		Map<String, String> param = new HashMap<String, String>();
		System.out.println("code: " + request.getParameter("code"));
		
		param.put("code", request.getParameter("code"));
		
		System.out.println("param : " + param.toString());
		UserVO uservo = userService.getGoogleToken(param);	// 토큰 + 고객 정보 + (로그인/회원)
		model.addAttribute("uservo", uservo);
		return "redirect:/";
	}	
	
	@GetMapping("/n_login")
	public String n_login(@ModelAttribute("NaverAuth") NaverAuthResponse auth, HttpSession session) {
	    UserVO vo = userService.getUser(auth); 
	    UserVO _vo = userService.get(vo.getEmail());
	    if(_vo != null) {
	    	userService.logIn(vo, session);
	    }else {
	    	userService.register(vo, session);
	    }
	    return "redirect:/";
	}
	
	@ResponseBody
	@PostMapping("/chkEmail")
	public boolean chkEmail(@RequestParam("Eamil") String Email) {
		return userService.chkEmail(Email);
	}
	
	@PostMapping("/register")
	public String register(UserVO vo, HttpSession session) {
		userService.register(vo, session);
		return "index";
	}
	

}
