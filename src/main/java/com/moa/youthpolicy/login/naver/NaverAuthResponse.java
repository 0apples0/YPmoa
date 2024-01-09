package com.moa.youthpolicy.login.naver;

import lombok.Data;

@Data
public class NaverAuthResponse {
	private String code;
	private String state;
	private String error;
	private String error_description;
}
