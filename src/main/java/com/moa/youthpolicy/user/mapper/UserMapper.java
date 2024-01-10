package com.moa.youthpolicy.user.mapper;

import com.moa.youthpolicy.user.domain.UserVO;

public interface UserMapper {
	// 留덉씠�럹�씠吏� 議고쉶
	public UserVO select(String Email);
	// 留덉씠�럹�씠吏� �닔�젙
	public String update(UserVO vo);
	// �쉶�썝�깉�눜
	public String delete(String Email);
	
	public void register(UserVO vo);
	
	public UserVO login(UserVO vo);
	
	public UserVO selectUserByEmail(String Email);
}
