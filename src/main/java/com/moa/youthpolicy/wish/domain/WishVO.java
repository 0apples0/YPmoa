package com.moa.youthpolicy.wish.domain;



import lombok.Data;
import lombok.extern.log4j.Log4j;

@Data
@Log4j
public class WishVO {
	String wishUser; // 유저 아이디
	Integer wishPolicy; // wish한 정책
	boolean isalert; // 알람 유무
	
	public WishVO() {}
	
	public WishVO(String Email, Integer bno) {
		this.wishPolicy = bno;
		this.wishUser = Email;
	}
	
	public WishVO(String Email, Integer wishPolicy ,boolean isalert) {
		this.wishUser = Email;
		this.wishPolicy = wishPolicy;
		this.isalert = isalert;
		log.info("위시야 :"+isalert);
	}
	
    public Integer getWishPolicy() {
        return wishPolicy;
    }
    
    public boolean isalert() {
    	return isalert;
    }
	
}
