package com.moa.youthpolicy.community.domain;

import java.util.Date;

import com.moa.youthpolicy.common.LikeCommentVO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
public class CommunityCommentVO {
	int bno;
	int cno;
	String content;
	String writer;
	int like;
	Date regDate;
	
	LikeCommentVO likeVO;

}
