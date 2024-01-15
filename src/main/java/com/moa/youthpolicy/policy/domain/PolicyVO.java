package com.moa.youthpolicy.policy.domain;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class PolicyVO {
	
	Integer no;
	String rgnSeNm;
	String sprvsnInstNm;
	String policyNm;
	String updtDt;
	String crtDt;
	LocalDateTime updtDt_date;
	LocalDateTime crtDt_date;
	PolicyBoardVO policyBoardVO;
	

}
