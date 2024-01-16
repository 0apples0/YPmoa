package com.moa.youthpolicy.wish.domain;


import lombok.Data;

@Data
public class WishVO {
	String wishUser; // 유저 아이디
	int wishPolicy; // wish한 정책
	boolean isalert; // 알람 유무
}
