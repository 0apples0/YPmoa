package com.moa.youthpolicy.wish.domain;


import lombok.Data;

@Data
public class WishVO {
	String wishUser; // 유저 아이디
	Integer wishPolicy; // wish한 정책
	boolean isalert; // 알람 유무
	
	public WishVO() {}
	
	public WishVO(String Email, Integer bno) {
		this.wishPolicy = bno;
		this.wishUser = Email;
	}
	
    public Integer getWishPolicy() {
        return wishPolicy;
    }
	
}
