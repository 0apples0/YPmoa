package com.moa.youthpolicy.suggest.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class SuggestVO {
	int bno;
	Character boardType;
	String category;
	String content;
	String imageName;
	int like;
	Date regDate;
	String title;
	String writer;
	String region;
}
