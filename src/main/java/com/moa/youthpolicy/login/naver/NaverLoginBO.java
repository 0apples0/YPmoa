package com.moa.youthpolicy.login.naver;

import javax.servlet.http.HttpSession;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.oauth.OAuth20Service;

public class NaverLoginBO {
	 private final static String CLIENT_ID = "//네이버API Client ID"; 
	    private final static String CLIENT_SECRET = " //네이버 Secret";                      
	    private final static String REDIRECT_URI = "http://localhost:8080/users/callback.do";
	    private final static String SESSION_STATE = "oauth_state";
	    
	    private final static String PROFILE_API_URL = "https://openapi.naver.com/v1/nid/me";
	    
	    public String getAuthorizationUrl(HttpSession session) {

	        /* 세션 유효성 검증을 위하여 난수를 생성 */
	        String state = generateRandomString();
	        /* 생성한 난수 값을 session에 저장 */
	        setSession(session,state);        

	        /* Scribe에서 제공하는 인증 URL 생성 기능을 이용하여 네아로 인증 URL 생성 */
	        OAuth20Service oauthService = new ServiceBuilder()                                                   
	                .apiKey(CLIENT_ID)
	                .apiSecret(CLIENT_SECRET)
	                .callback(REDIRECT_URI)
	                .state(state) //앞서 생성한 난수값을 인증 URL생성시 사용함
	                .build(NaverLoginApi.instance());

	        return oauthService.getAuthorizationUrl();
	    }

		private void setSession(HttpSession session, String state) {
			// TODO Auto-generated method stub
			
		}

		private String generateRandomString() {
			// TODO Auto-generated method stub
			return null;
		}
}
