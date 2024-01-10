package com.moa.youthpolicy.login.google;

import com.fasterxml.jackson.annotation.JsonProperty;

public class GoogleProfileInfo {
    @JsonProperty("name")
    private String name;

    @JsonProperty("email")
    private String email;

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

    
    
}
