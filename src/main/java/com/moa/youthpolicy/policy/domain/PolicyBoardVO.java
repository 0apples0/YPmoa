package com.moa.youthpolicy.policy.domain;

import lombok.Data;

@Data
public class PolicyBoardVO {
	String policyTitle;
	String title;
	String content;
	int like;
	String imageName;
	Character boardType;
	Integer bno;
	Integer view;
}
