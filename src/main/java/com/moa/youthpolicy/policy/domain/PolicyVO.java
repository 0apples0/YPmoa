package com.moa.youthpolicy.policy.domain;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class PolicyVO {
	
	Integer no;
	String sprvsnInstNm;
	String policyNm;
	String updtDt;
	LocalDateTime updtDt_date;
	
	PolicyBoardVO policyBoardVO;
	

}
