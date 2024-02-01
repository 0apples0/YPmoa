package com.moa.youthpolicy.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.moa.youthpolicy.common.AuthUtil;
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
	    int userT = userService.chkUserType(user);
		if(user == null || !AuthUtil.isLogin()) {
			//model.addAttribute("alertLoginMessage", "로그인 후 이용 가능한 서비스입니다.");
			return "redirect:/user/login";
		}
		if(!AuthUtil.getCurrentUserAccount().equals(user.getEmail())) {
			return "redirect:/user/mypage?Email="+AuthUtil.getCurrentUserAccount();
		}
	    if(userT==1 || userT==0) { // 탈퇴 회원이 아니라면,
	    	httpSession.setAttribute("user", user);
	    	model.addAttribute("user", user);
	    }
	    
	    return "user/mypage";
	}

	@PostMapping("/mypage")
	public String update(@ModelAttribute UserVO vo, Model model) {
		String email = vo.getEmail();
		userService.modify(vo);
		return "redirect:/user/mypage?Email="+email;
	}
	
	@ResponseBody
	@PostMapping("/modinfo")
	public boolean modinfo (UserVO vo, HttpSession session) {
		log.info("controller modinfo : "+ vo.toString());
		
		if(userService.modinfo(vo)) {
			UserVO _vo = userService.get(vo.getEmail());
			session.setAttribute("user", _vo);
			return true;
		}
		return false;
	}
	
	@GetMapping("/modify")
	public String myPage(@RequestParam(name = "email") String email, Model model, HttpSession session) {
	    // 현재 로그인한 사용자의 이메일 얻어오기
	    UserVO user = (UserVO)session.getAttribute("user");
	    // URL에 입력된 이메일과 로그인한 사용자의 이메일 비교
	    if (user.getEmail() == null || !user.getEmail().equals(email)) {
	    	log.info("에러/비번변경 url 이메일 : "+ email);
	    	log.info("에러/비번변경 로근 유저 이메일 : "+ user.getEmail());
	        // 세션에 저장된 이메일이 없거나 이메일이 다르면 에러 페이지로 리다이렉트 또는 에러 페이지를 보여줌
	        return "redirect:/errorPage";
	    }
	    // 이메일이 일치하면 원래의 처리를 계속 진행
    	log.info("비번변경 url 이메일 : "+ email);
    	log.info("비번변경 로근 유저 이메일 : "+ user.getEmail());
	    return "user/modify";
	}
	
    @PostMapping("/modify")
    public String updatePassword(@ModelAttribute("pwUpdate") UserVO user,
                                 @RequestParam("currentPassword") String currentPassword,
                                 @RequestParam("newPassword") String newPassword,
                                 HttpServletRequest request,
                                 RedirectAttributes redirectAttributes,
                                 Model model) {
    	if(user.getPW() == null || user.getPW() == "") {
    		if(AuthUtil.isLogin()) {
    			return "redirect:/user/mypage?Email="+AuthUtil.getCurrentUserAccount();
    		}else {
    			return "redirect:/user/login";
    		}
    		
    	}
        boolean passwordUpdated = userService.updatePassword(user, currentPassword, newPassword);
        log.info("컨트롤러 : "+model);
        if (passwordUpdated) {
        	HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
            }
        	redirectAttributes.addFlashAttribute("successMessage", "비밀번호가 성공적으로 업데이트되었습니다");
            redirectAttributes.addFlashAttribute("isPasswordUpdated", true);
            return "redirect:/user/login";
        } else {
        	redirectAttributes.addAttribute("errorMessage", "비밀번호 업데이트에 실패했습니다. 현재 비밀번호를 확인해주세요");
            return "redirect:/user/modify";
        }

    }
	
    @GetMapping("/login")
    public void login() {
    	
    }
    /*
    @PostMapping("/login")
    @ResponseBody
    public void login(@RequestParam String Email, HttpSession session) {
        UserVO user = userService.get(Email);
        session.setAttribute("user", user);
    }*/
    @PostMapping("/login")
    @ResponseBody
    public void login(@RequestParam String Email, HttpSession session) {
        UserVO user = userService.get(Email);
        int userT = userService.chkUserType(user);

	    if(userT==1 || userT==0) { // 탈퇴 회원이 아니라면,
	    	session.setAttribute("user", user);
	    }
    }    
    @GetMapping("register")
    public void register(){
    	
    }
    
    @GetMapping("/logout")
    public String logout(HttpSession session) {
    	userService.logOut(session);
    	return "redirect:/";
    			
    }
    

	@PostMapping("/remove")
	public String remove(RedirectAttributes redirectAttributes, HttpServletRequest request) {
	    UserVO currentUser = userService.getCurrentUser(request);
	    if (currentUser != null) {
	        String email = currentUser.getEmail();
	        userService.removeUser(email);
	        request.getSession().invalidate();
	        redirectAttributes.addFlashAttribute("successMessage", "회원탈퇴가 완료되었습니다.");
	        return "redirect:/user/login";
	    } else {
	        redirectAttributes.addFlashAttribute("errorMessage", "로그인이 필요한 서비스입니다.");
	        return "redirect:/user/login";
	    }
	}
/*
	@PostMapping("/remove")
	public String remove(RedirectAttributes redirectAttributes, HttpServletRequest request) {
	    UserVO currentUser = userService.getCurrentUser(request);
	    if (currentUser != null) {
	        String email = currentUser.getEmail();
	        userService.removeUser(email);
	        userService.addleaveUser(currentUser);
	        request.getSession().invalidate();
	        redirectAttributes.addFlashAttribute("successMessage", "회원탈퇴가 완료되었습니다.");
	        return "redirect:/user/login";
	    } else {
	        redirectAttributes.addFlashAttribute("errorMessage", "로그인이 필요한 서비스입니다.");
	        return "redirect:/user/login";
	    }
	}
	*/
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
			if(!userService.logIn(vo, session)) { //false 반환 시에는 로그인 페이지로 이동
				return "redirect:/user/login";
			}
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
			if(!userService.logIn(vo, session)) { //false 반환 시에는 로그인 페이지로 이동
				return "redirect:/user/login";
			}
	    }else {
	    	userService.register(vo, session);
	    }
	    return "redirect:/";
	}
	
	@ResponseBody
	@PostMapping("/chkEmail")
	public boolean chkEmail(@RequestParam String Email) {
	    System.out.println("chkEmail - Email: " + Email);
	    boolean result = userService.chkEmail(Email);
	    System.out.println("chkEmail - Result: " + result);
	    
	    return result;
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
		log.info(nick);
		return userService.chkNick(nick);
	}
	
	@ResponseBody
	@PostMapping("/chkPhone")
	public boolean chkPhone(@RequestParam String phone) {
		return userService.chkPhone(phone);
	}
	
	@ResponseBody
	@PostMapping("/chkPassword")
	public boolean chkPassword(@RequestParam String Email, @RequestParam String Password) {
	    UserVO vo = new UserVO();
	    vo.setEmail(Email);
	    vo.setPW(Password);
	    return userService.chkPW(vo);
	}

	
	@GetMapping("/findLoginInfo")
	public void findLoginInfo(UserVO vo, HttpSession session) {
	}
	
	//아이디 찾기
	@ResponseBody
	@PostMapping("/findID")
	public String showID(UserVO vo) {
		log.info(vo.toString());
		String userID = userService.findUserID(vo);
		log.info(userID);
		return userID;
	}
	
	//비밀번호 찾기(임시 비밀번호 발급)
	@ResponseBody
	@PostMapping("/findPW")
	public String showPW(UserVO vo) {
		log.info(vo.toString());
		String userTempPW = userService.changeToTempPW(vo);
		log.info(userTempPW);
		return userTempPW;
	}
	
	@ResponseBody
	@PostMapping("/chkUserType")
	public int chkUserType(@RequestParam String Email) {
	    UserVO vo = new UserVO();
	    vo.setEmail(Email);
	    return userService.chkUserType(vo);
	}
	

}
