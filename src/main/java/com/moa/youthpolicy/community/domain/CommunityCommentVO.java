package com.moa.youthpolicy.community.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommunityCommentVO {
	int bno;
	int cno;
	String content;
	String writer;
	int like;
	Date regDate;
}
