package com.moa.youthpolicy.user.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.moa.youthpolicy.user.domain.UserVO;

@Service
public class UserService {
	private static final String NURL = "https://nid.naver.com/oauth2.0/authorize";
	private static final String NCLIENTID = "rzR7mIoFeu6WT0A7uoHD";
	private static final String NREDIRECT_URI = "http://localhost:8090/board/index";

	public UserVO get(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	public void modify(UserVO modifyUser) {
		// TODO Auto-generated method stub
		
	}

	public void removeUser(String email) {
		// TODO Auto-generated method stub
		
	}
	
	public String getUri(){
		HashMap<String, String> map = new HashMap();
		String uri = NURL;
		map.put("response_type", "code");
		map.put("client_id", NCLIENTID);
		map.put("redirect_uri", NREDIRECT_URI);
		map.put("redirect_uri", "oauth_state");
		int cnt = 0;
		for( String strKey : map.keySet() ){
			if(cnt == 0) {
				uri += "?" + map.get(strKey);
			}else {
				uri += "&" + map.get(strKey);
			}			
			cnt++;
		}
		
		return uri;
	}
}
