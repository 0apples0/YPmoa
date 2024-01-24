package com.moa.youthpolicy.community.domain;

import java.util.Date;

import com.moa.youthpolicy.common.LikeBoardVO;

import lombok.Data;

@Data
public class CommunityVO {
	int bno;
	String title;
	String content;
	String writer;
	String region;
	String category;
	int like;
	String imageName;
	Date regDate;
	Character boardType;
	
	LikeBoardVO likeVO;
	int isdeleted; //삭제 여부
}
