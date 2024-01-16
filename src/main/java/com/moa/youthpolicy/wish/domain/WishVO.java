package com.moa.youthpolicy.wish.domain;

import com.moa.youthpolicy.policy.domain.PolicyBoardVO;

import lombok.Data;

@Data
public class WishVO {
	String wishUser; // 유저 아이디
	int wishPolicy; // wish한 정책
	boolean isalert; // 알람 유무
	PolicyBoardVO policyBoardVO;
}
