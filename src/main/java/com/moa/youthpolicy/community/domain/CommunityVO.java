package com.moa.youthpolicy.community.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommunityVO {
	int bno;
	String title;
	String content;
	String writer;
	String category;
	String like;
	String imageName;
	Date regDate;
	Character boardType;
	
}
