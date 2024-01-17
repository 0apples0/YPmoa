package com.moa.youthpolicy.common;

import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.moa.youthpolicy.user.domain.UserVO;

public class AuthUtil {
	public static boolean isAdmin() {
	    ServletRequestAttributes servletRequestAttribute = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
	    HttpSession httpSession = servletRequestAttribute.getRequest().getSession(true);
	    if( ((UserVO)httpSession.getAttribute("user")).getUserType() >= 0) {
	        return true;
	    }else {
	        return false;
	    }
	}

	public static UserVO getCurrentUserEntitiy() {
	    ServletRequestAttributes servletRequestAttribute = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
	    HttpSession httpSession = servletRequestAttribute.getRequest().getSession(true);
	    return (UserVO)httpSession.getAttribute("user");
	}


	public static String getCurrentUserAccount() {
	    ServletRequestAttributes servletRequestAttribute = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
	    HttpSession httpSession = servletRequestAttribute.getRequest().getSession(true);

	    UserVO user = (UserVO) httpSession.getAttribute("user");
	    
	    if (user != null && user.getEmail() != null) {
	        return user.getEmail();
	    } else {
	        return null;
	    }
	}
}
