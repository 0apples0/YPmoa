package com.moa.youthpolicy.admin.domain;

import java.util.Date;


import lombok.Data;

@Data
public class AdminVO {
	int bno;
	int cno;
	String title;
	String content;
	String writer;
	int like;
	Date regDate;
	String boardType;
	int tipcno;
	int policycno;
	int countReport;
	int isdeleted; // 삭제 여부 판단
	int isChecked; // 처리 여부 판단
}
