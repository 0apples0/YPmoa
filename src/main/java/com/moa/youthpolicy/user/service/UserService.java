package com.moa.youthpolicy.user.service;

import java.net.URLEncoder;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.moa.youthpolicy.common.UserGenericService;
import com.moa.youthpolicy.login.naver.NaverAuthResponse;
import com.moa.youthpolicy.login.naver.NaverOauthParams;
import com.moa.youthpolicy.login.naver.NaverProfileResponse;
import com.moa.youthpolicy.user.domain.UserVO;
import com.moa.youthpolicy.user.mapper.UserMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class UserService implements UserGenericService {
	private static final String NURL = "https://nid.naver.com/oauth2.0/authorize";
	private static final String NCLIENTID = "rzR7mIoFeu6WT0A7uoHD";
	private static final String NREDIRECT_URI = "http://localhost:8090/index";
	private static final String NSECRET = "GPSQ2FGPUb";
	
	@Autowired
	UserMapper mapper;
	
	public boolean chkEmail(String email) {
		
		return true;
	}
	
	public boolean chkNick(String nick) {
		
		return false;
	}
	
	

	public UserVO get(String email) {
		UserVO user = mapper.selectUserByEmail(email);
				
		return user;
	}

	public void modify(UserVO modifyUser) {
		// TODO Auto-generated method stub

	}

	public void removeUser(String email) {
		// TODO Auto-generated method stub

	}
	
	public void register(UserVO vo) {
		
		if(vo.getPW() != null) {
			vo.setPW(hashingPW(vo.getPW()));
		}		
	}
	
	public String findUserID(UserVO vo) {
		
		return null;
	}
	
	public void changePW(UserVO vo) {
		
	}
	
	private String hashingPW(String pw) {
		
		return null;
	}
	
	@Override
	public void delMember(UserVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modMember(UserVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void logOut(UserVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void logIn(UserVO vo) {
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
		return uri;
	}

	
	public UserVO getUser(NaverAuthResponse auth) {
	    RestTemplate rt = new RestTemplate();
	    HttpHeaders accessTokenHeaders = new HttpHeaders();
	    accessTokenHeaders.add("Content-type", "application/x-www-form-urlencoded");

	    MultiValueMap<String, String> accessTokenParams = new LinkedMultiValueMap<>();
	    accessTokenParams.add("grant_type", "authorization_code");
	    accessTokenParams.add("client_id", NCLIENTID);  // NCLIENTID瑜� 吏곸젒 �궗�슜
	    accessTokenParams.add("client_secret", NSECRET);  // NCLIENTSECRET瑜� 吏곸젒 �궗�슜
	    accessTokenParams.add("code", auth.getCode());
	    accessTokenParams.add("state", auth.getState());

	    HttpEntity<MultiValueMap<String, String>> accessTokenRequest = new HttpEntity<>(accessTokenParams, accessTokenHeaders);

	    ResponseEntity<String> accessTokenResponse = rt.exchange(
	            "https://nid.naver.com/oauth2.0/token",
	            HttpMethod.POST,
	            accessTokenRequest,
	            String.class 
	    );
	  

	    ObjectMapper objectMapper = new ObjectMapper();
	    
	    NaverOauthParams naverOauthParams = null;
	    try {
	        naverOauthParams = objectMapper.readValue(accessTokenResponse.getBody(), NaverOauthParams.class);
	    } catch (JsonProcessingException e) {
	        e.printStackTrace();
	    }
	    
	    HttpHeaders profileRequestHeader = new HttpHeaders();
	    profileRequestHeader.add("Authorization", "Bearer " + naverOauthParams.getAccess_token());
	    
	    HttpEntity<HttpHeaders> profileHttpEntity = new HttpEntity<>(profileRequestHeader);
	    
	    ResponseEntity<String> profileResponse = rt.exchange(
	            "https://openapi.naver.com/v1/nid/me",
	            HttpMethod.POST,
	            profileHttpEntity,
	            String.class
	    );
	    
	    objectMapper = new ObjectMapper();
	    NaverProfileResponse naverProfileResponse = null;

	    try {
	        naverProfileResponse = objectMapper.readValue(profileResponse.getBody(), NaverProfileResponse.class);
	    } catch (JsonProcessingException e) {
	        e.printStackTrace();
	    }

	    String email = naverProfileResponse.getResponse().getEmail();
	    String phone = naverProfileResponse.getResponse().getMobile();
	   
	    String name = naverProfileResponse.getResponse().getName();
	    UserVO uservo = new UserVO();
	    uservo.setEmail(email);
	    uservo.setPhone(Integer.parseInt(phone.replaceAll("-","")));
	    
	    uservo.setName(name);
	    uservo.setNick(name);

	    return uservo;
	}

	
	
}
