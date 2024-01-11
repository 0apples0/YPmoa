package com.moa.youthpolicy.user.service;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.HttpStatusCodeException;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.moa.youthpolicy.common.UserGenericService;
import com.moa.youthpolicy.login.google.GoogleProfileInfo;
import com.moa.youthpolicy.login.google.GoogleTokenResponse;
import com.moa.youthpolicy.login.naver.NaverAuthResponse;
import com.moa.youthpolicy.login.naver.NaverOauthParams;
import com.moa.youthpolicy.login.naver.NaverProfileResponse;
import com.moa.youthpolicy.user.domain.UserVO;
import com.moa.youthpolicy.user.mapper.UserMapper;

import lombok.extern.log4j.Log4j;

@PropertySource("classpath:oauth2.properties")
@Service
@Log4j
public class UserService implements UserGenericService {
	private static final String NURL = "https://nid.naver.com/oauth2.0/authorize";
	private static final String NCLIENTID = "rzR7mIoFeu6WT0A7uoHD";
	private static final String NREDIRECT_URI = "http://localhost:8090/index";
	private static final String NSECRET = "GPSQ2FGPUb";
	
	@Value("${google.url}")
	private String googleUrl;
	
	@Value("${google.client_id}")
	private String googleClientId;
	
	@Value("${google.redirect_url}")
	private String googleRedirectUrl;
	
	@Value("${google.scope}")
	private String googleScope;
	
	@Value("${google.token.url}")
	private String googleTokenUrl;
	
	@Value("${google.client_secret}")
	private String googleClientSecrect;
	
	@Autowired
	UserMapper mapper;
	
	
	public boolean chkEmail(String email) {
		UserVO vo = mapper.selectUserByEmail(email);
		return vo == null;	
	}
	
	public boolean chkNick(String nick) {
		UserVO vo = mapper.chkNick(nick);
		return vo == null;
	}
	
	public boolean chkPhone(String phoneNumber) {
		int phone = Integer.parseInt(phoneNumber);
		UserVO vo = mapper.chkPhone(phone);
		return vo == null;
	}
	
	

	public UserVO get(String email) {
		UserVO user = mapper.selectUserByEmail(email);
				
		return user;
	}

	public void modify(UserVO modifyUser) {
//	    int rowsAffected = mapper.update(modifyUser);
//	    log.info("Service : "+ modifyUser.toString());
//	    log.info("Rows affected: " + rowsAffected);
//
//	    if (rowsAffected > 0) {
//	        return rowsAffected;
//	    } else {
//	        throw new RuntimeException("회원 정보 수정 실패");
//	    }
		mapper.update(modifyUser);
	}

	public void removeUser(String email) {
		// TODO Auto-generated method stub

	}
	
	public void register(UserVO vo,HttpSession session) {		
		if(vo.getPW() != null) {
			vo.setPW(hashingPW(vo.getPW()));
		}
		log.info(vo.toString());
		mapper.register(vo);
		logIn(vo, session);
	}
	
	public String findUserID(UserVO vo) {
		
		return null;
	}
	
	public void changePW(UserVO vo) {
		
	}
	
	private String hashingPW(String pw) {
//		encoder.encode(pw);
		return pw;
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
	public boolean logIn(UserVO vo, HttpSession session) {
		UserVO _vo = mapper.selectUserByEmail(vo.getEmail());
//		if(_vo.getPW() != null) {
//			if(BCrypt.checkpw(vo.getPW(), _vo.getPW())) {
//				session.setAttribute("user", _vo);
//				return true;
//			}else {
//				return false;
//			}
//		}else {
			session.setAttribute("user", _vo);
			return true;
//		}
		
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

	public String doGoogleLogin() {
		// Get 요청 보내기 위한 세팅
		HashMap<String, String> map = new HashMap();
		String url = "";
		map.put("response_type", "code");
		map.put("client_id", googleClientId);
		map.put("redirect_uri", googleRedirectUrl);
		map.put("scope", googleScope);
		try {
			for (String key : map.keySet()) {
				if(url != null && !url.isEmpty()) {
					url += "&" + URLEncoder.encode(key, "UTF-8") + "=" + URLEncoder.encode(map.get(key), "UTF-8");
				} else {
					url += googleUrl + "?" + URLEncoder.encode(key, "UTF-8") + "=" + URLEncoder.encode(map.get(key), "UTF-8");
				}
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return url;
	}
	
	public UserVO getGoogleToken(Map<String, String> param) {
		
		// 토큰 받아오기 위해 Post 요청 사용
		RestTemplate template = new RestTemplate();
		
		// HTTP 요청 형식인 header, body 생성
	    HttpHeaders tokenHeaders = new HttpHeaders();
	    tokenHeaders.add("Content-type", "application/x-www-form-urlencoded");
	    
	    MultiValueMap<String, String> tokenParams = new LinkedMultiValueMap<>();
	    tokenParams.add("grant_type", "authorization_code");
	    tokenParams.add("client_id", googleClientId);  
	    tokenParams.add("client_secret", googleClientSecrect);
	    tokenParams.add("code", param.get("code"));
	    tokenParams.add("redirect_uri", googleRedirectUrl);

	    HttpEntity<MultiValueMap<String, String>> tokenRequest = new HttpEntity<>(tokenParams, tokenHeaders);

	   // param에 들어있는 code로 Token 값 받아오기
	    ResponseEntity<GoogleTokenResponse> tokenResponse = template.exchange(
	            googleTokenUrl,
	            HttpMethod.POST,
	            tokenRequest,
	            GoogleTokenResponse.class 
	    );
	    System.out.println("token : " + tokenResponse.toString());
	    System.out.println("id_token : " +  tokenResponse.getBody().getId_token());
	    
        // id_token으로 고객 정보 가져오기
        Map<String, Object> map = new HashMap<>();
        map.put("id_token",tokenResponse.getBody().getId_token());
        
        ResponseEntity<Map> userResponse = template.postForEntity("https://oauth2.googleapis.com/tokeninfo",
                map, Map.class);
        
        Set<String> keySet = userResponse.getBody().keySet();
    	for(String key: keySet) {
    		System.out.println(key + " : " + userResponse.getBody().get(key));
    	}
    	
    	UserVO uservo = new UserVO();
    	uservo.setName(userResponse.getBody().get("name").toString());
    	uservo.setNick(userResponse.getBody().get("name").toString());
    	uservo.setEmail(userResponse.getBody().get("email").toString());
    	
    	System.out.println("user name: "+uservo.getName());
    	System.out.println("user nick: "+uservo.getNick());
    	System.out.println("user email: "+uservo.getEmail());
    	
    	
		return uservo;
	}

}
