package com.moa.youthpolicy.policy.domain;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.Data;

@Data
public class PolicyVO {
	String policyTitle;
	String title;
	String content;
	int like;
	String imageName;
	Character boardType;
	int bno;
	
	String sprvsnInstNm;
	String policyNm;
	String updtDt;
	LocalDateTime updtDt_date;
}
