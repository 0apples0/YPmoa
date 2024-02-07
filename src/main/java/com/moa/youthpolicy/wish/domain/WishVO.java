package com.moa.youthpolicy.wish.domain;

import lombok.Data;
import lombok.extern.log4j.Log4j;

@Data
@Log4j
public class WishVO {
    String wishUser; // 유저 아이디
    Integer wishPolicy; // wish한 정책
    Integer isAlert; // 알람 유무

    public WishVO() {}

    public WishVO(String Email, Integer wishPolicy) {
        this.wishPolicy = wishPolicy;
        this.wishUser = Email;
    }
    
    public Integer getWishPolicy() {
        return wishPolicy;
    }

 
}
