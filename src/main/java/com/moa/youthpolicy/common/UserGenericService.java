package com.moa.youthpolicy.common;

import javax.servlet.http.HttpSession;

import com.moa.youthpolicy.user.domain.UserVO;

public interface UserGenericService {
	public void delMember(UserVO vo);
	public void modMember(UserVO vo);
	public void logOut(HttpSession session);    
	public boolean logIn(UserVO vo, HttpSession session);
	UserVO getCurrentUser();
	boolean updatePassword(UserVO user, String currentPassword, String newPassword);
	
}
