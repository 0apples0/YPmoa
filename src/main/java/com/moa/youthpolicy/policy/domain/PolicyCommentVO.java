package com.moa.youthpolicy.policy.domain;

import java.util.Date;

import lombok.Data;

@Data
public class PolicyCommentVO {
	int bno;
	int cno;
	String content;
	String writer;
	int like;
	Date regDate;
}
