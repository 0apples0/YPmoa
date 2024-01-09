package com.moa.youthpolicy.user.service;

import java.net.URLEncoder;
import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.moa.youthpolicy.user.domain.UserVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class UserService {
	private static final String NURL = "https://nid.naver.com/oauth2.0/authorize";
	private static final String NCLIENTID = "rzR7mIoFeu6WT0A7uoHD";
	private static final String NREDIRECT_URI = "http://localhost:8090/index";

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

	public String getUri() {
		HashMap<String, String> map = new HashMap();
		String uri = NURL;
		map.put("response_type", "code");
		map.put("client_id", NCLIENTID);
		map.put("redirect_uri", NREDIRECT_URI);
		map.put("state", "oauth_state");
		int cnt = 0;
		try {

			for (String key : map.keySet()) {
				if (cnt == 0) {
					uri += "?" + URLEncoder.encode(key, "UTF-8") + "=" + URLEncoder.encode(map.get(key), "UTF-8");
				} else {
					uri += "&" + URLEncoder.encode(key, "UTF-8") + "=" + URLEncoder.encode(map.get(key), "UTF-8");
				}
				cnt++;
			}
		} catch (Exception e) {
			log.error("ConnHttpGetType Error: {}" + e);
		}
		log.info(uri);
		return uri;
	}
}
