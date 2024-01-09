package com.moa.youthpolicy.user.mapper;

import com.moa.youthpolicy.user.domain.UserVO;

public interface UserMapper {
	// 마이페이지 조회
	public UserVO select(String Email);
	// 마이페이지 수정
	public String update(UserVO vo);
	// 회원탈퇴
	public String delete(String Email);
	

	
	
	public UserVO selectUserByEmail(String Email);
}
