package com.moa.youthpolicy.common;

import javax.servlet.http.HttpSession;

import com.moa.youthpolicy.user.domain.UserVO;

public interface UserGenericService {
	public void delMember(UserVO vo); // 회원탈퇴
	public void modMember(UserVO vo); // 회원정보 수정
	public void logOut(UserVO vo);    
	public boolean logIn(UserVO vo, HttpSession session);
}
