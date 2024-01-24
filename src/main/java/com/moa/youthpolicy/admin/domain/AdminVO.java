package com.moa.youthpolicy.admin.domain;

import java.util.Date;


import lombok.Data;

@Data
public class AdminVO {
	int bno;
	int cno;
	String content;
	String writer;
	int like;
	Date regDate;
	String boardType;
	int tipcno;
	int policycno;
}
