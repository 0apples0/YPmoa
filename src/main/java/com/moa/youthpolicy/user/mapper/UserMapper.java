package com.moa.youthpolicy.user.mapper;

import com.moa.youthpolicy.user.domain.UserVO;

public interface UserMapper {
	
	public UserVO selectUserByEmail(String Email);
}
