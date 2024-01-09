package com.moa.youthpolicy.login.naver;

import com.fasterxml.jackson.annotation.JsonProperty;

public class NaverProfileInfo {

    @JsonProperty("response")
    private Response response;

    public Response getResponse() {
        return response;
    }

    public static class Response {
        @JsonProperty("id")
        private String id;

        @JsonProperty("email")
        private String email;

        @JsonProperty("mobile")
        private String mobile;

        @JsonProperty("mobile_e164")
        private String mobileE164;

        @JsonProperty("name")
        private String name;

        public String getId() {
            return id;
        }

        public String getEmail() {
            return email;
        }

        public String getMobile() {
            return mobile;
        }

        public String getMobileE164() {
            return mobileE164;
        }

        public String getName() {
            return name;
        }
    }
}
