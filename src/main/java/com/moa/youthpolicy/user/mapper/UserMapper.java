package com.moa.youthpolicy.user.mapper;

import com.moa.youthpolicy.user.domain.UserVO;

public interface UserMapper {
	public UserVO select(String Email);
	public int update(UserVO vo);
	public String delete(String Email);
	public void register(UserVO vo);
	public UserVO selectUserByEmail(String Email);
}
