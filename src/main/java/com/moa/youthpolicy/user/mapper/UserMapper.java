package com.moa.youthpolicy.user.mapper;

import java.util.Map;


import com.moa.youthpolicy.user.domain.UserVO;

public interface UserMapper {
	public UserVO select(String Email);
	public void update(UserVO vo);
	public int modinfo(UserVO vo);
	public String delete(String Email);
	public void register(UserVO vo);
	
	public UserVO login(UserVO vo);
	void updateUserPassword(String Email, String newPassword);
	public UserVO selectUserByEmail(String Email);
	public UserVO chkPhone(String phone); // 전화번호 문자열 변경
	public UserVO chkNick(String nick);
	public int updatePassword(Map<String, Object> paramMap);
	public void removeUser(String email);
	public UserVO getUserByEmail(String email);
	public Object chkPW(UserVO vo);
	public int chkUserType(UserVO vo);
	public String findUserID(UserVO vo); // 아이디 찾기
	public UserVO chkCurrentUser(UserVO vo); // 임시 비밀번호 세팅 전 유저 정보 일치여부 체크
	public void changeToTempPW(UserVO vo); // 임시 비밀번호 세팅
}
