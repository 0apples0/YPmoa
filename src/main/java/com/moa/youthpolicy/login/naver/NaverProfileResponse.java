package com.moa.youthpolicy.login.naver;

import com.fasterxml.jackson.annotation.JsonProperty;

public class NaverProfileResponse {

    @JsonProperty("resultcode")
    private String resultcode;

    @JsonProperty("message")
    private String message;

    @JsonProperty("response")
    private NaverProfileInfo response;

    public String getResultcode() {
        return resultcode;
    }

    public String getMessage() {
        return message;
    }

    public NaverProfileInfo getResponse() {
        return response;
    }
}
