package com.moa.youthpolicy.login.naver;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown = true)
public class NaverOauthParams {
    @JsonProperty("access_token")
    private String access_token;

    @JsonProperty("refresh_token")
    private String refresh_token;

    @JsonProperty("token_type")
    private String token_type;

    public String getAccess_token() {
        return access_token;
    }

    public String getRefresh_token() {
        return refresh_token;
    }

    public String getToken_type() {
        return token_type;
    }

    // 생성자, 다른 필요한 메서드 등도 필요한 경우 추가해 주세요.
}