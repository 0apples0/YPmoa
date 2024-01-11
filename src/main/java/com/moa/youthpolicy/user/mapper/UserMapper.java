package com.moa.youthpolicy.user.mapper;

import com.moa.youthpolicy.user.domain.UserVO;

public interface UserMapper {
	public UserVO select(String Email);
	public void update(UserVO vo);
	public int modinfo(UserVO vo);
	public String delete(String Email);
	public void register(UserVO vo);
	
	public UserVO login(UserVO vo);
	
	public UserVO selectUserByEmail(String Email);
	public UserVO chkPhone(int phone);
	public UserVO chkNick(String nick);
}
