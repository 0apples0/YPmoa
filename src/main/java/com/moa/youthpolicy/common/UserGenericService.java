package com.moa.youthpolicy.common;

import com.moa.youthpolicy.user.domain.UserVO;

public interface UserGenericService {
	public void delMember(UserVO vo); // ȸ��Ż��
	public void modMember(UserVO vo); // ȸ������ ����
	public void logOut(UserVO vo);    
	public void logIn(UserVO vo);
}
