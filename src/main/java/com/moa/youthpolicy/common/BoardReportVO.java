package com.moa.youthpolicy.common;

import java.util.Date;

import lombok.Data;

@Data
public class BoardReportVO {
	int suggestbno;
	int tipbno;
	String reasonCategory;
	String reporter;
	String reason;
	String boardType;
	Date reportDate;
	boolean isChecked;
	
}
