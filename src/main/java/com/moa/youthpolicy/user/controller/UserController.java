package com.moa.youthpolicy.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
import com.moa.youthpolicy.user.mapper.UserMapper;
import com.moa.youthpolicy.user.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user/*")
@AllArgsConstructor
@Log4j
public class UserController {
    private final UserService userService;
    private final UserMapper userMapper;

	@GetMapping("/mypage")
	public String getMypage(@RequestParam("Email") String Email, HttpSession httpSession, Model model) {
	    log.info("마이페이지 조회");
	    UserVO user = userService.get(Email);
	    httpSession.setAttribute("user", user);
	    model.addAttribute("user", user);
	    return "user/mypage";
	}

	@PostMapping("/mypage")
	public String update(@ModelAttribute UserVO vo, Model model) {
		String email = vo.getEmail();
		userService.modify(vo);
		model.addAttribute("isWorkText", vo.getIsWork() == 1 ? "취업" : "미취업");
		model.addAttribute("isMarryText", vo.getIsMarry() == 1 ? "기혼" : "미혼");
		return "redirect:/user/mypage?Email="+email;
	}
	
	@ResponseBody
	@PostMapping("/modinfo")
	public boolean modinfo (UserVO vo) {
		log.info("controller : "+ vo.toString());
		return userService.modinfo(vo);
	}
	
	@GetMapping("/modify")
	public String modPW(Model model) {
		return "user/modify";
	}
	
	
	@PostMapping("/modify")
	public String modifyPassword(UserVO userVO, HttpServletRequest request, Model model) {
	    UserVO currentUser = userService.getCurrentUser(request);
	    
		    if (!userVO.getPW().equals(currentUser.getPW())) {
		        model.addAttribute("error", "현재 비밀번호가 일치하지 않습니다.");
		        return "redirect:/user/modify";
		    }
		    if (!userVO.getNewPassword().equals(userVO.getConfirmPassword())) {
		        model.addAttribute("error", "새 비밀번호와 확인 비밀번호가 일치하지 않습니다.");
		        return "redirect:/user/modify";
		    }
		    userService.updatePassword(userVO.getNewPassword());
		    HttpSession session = request.getSession();
		    session.setAttribute("currentUser", currentUser);
		    return "redirect:/user/login";
	}
	
    @GetMapping("/login")
    public void login() {
    	
    }
    
    @GetMapping("register")
    public void register(){
    	
    }

	@PostMapping("/remove")
	public String remove(HttpSession httpSession, Model model) {
	    String email = (String) httpSession.getAttribute("Email");
	    userService.removeUser(email);
	    httpSession.invalidate();
	    log.info("회원탈퇴 : " + email);
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

	}*/
	
	@GetMapping("/getGoogleCode")
	public String g_login(HttpServletRequest request, HttpSession session) {
		Map<String, String> param = new HashMap<String, String>();
		System.out.println("code: " + request.getParameter("code"));
		
		param.put("code", request.getParameter("code"));
		
		System.out.println("param : " + param.toString());
		UserVO vo = userService.getGoogleToken(param);	// 토큰 + 고객 정보 + (로그인/회원)
		UserVO _vo = userService.get(vo.getEmail());
		if(_vo != null) {
			userService.logIn(vo, session);
		}else {
			userService.register(vo, session);
		}
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
	public boolean chkEmail(@RequestParam String Email) {
		System.out.println(Email);
	    return userService.chkEmail(Email);
	}
	
	@PostMapping("/register")
	public String register(UserVO vo, HttpSession session) {
		log.info(vo.toString());
		userService.register(vo, session);
		return "redirect:/";
	}
	
	@ResponseBody
	@PostMapping("/chkNickname")
	public boolean chkID(@RequestParam String nick) {
		return userService.chkNick(nick);
	}
	
	@ResponseBody
	@PostMapping("/chkPhone")
	public boolean chkPhone(@RequestParam String phone) {
		return userService.chkPhone(phone);
	}

}
