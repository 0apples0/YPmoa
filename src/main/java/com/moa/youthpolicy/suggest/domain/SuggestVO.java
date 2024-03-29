package com.moa.youthpolicy.suggest.domain;

import java.util.Date;

import lombok.Data;

@Data
public class SuggestVO {
	int bno;
	int userType;
	String title;
	String content;
	String writer;
	String region;
	String category;
	int like;
	String imageName;
	Date regDate;
	Character boardType;
	int isdeleted;	//삭제여부
}
