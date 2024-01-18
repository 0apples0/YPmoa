package com.moa.youthpolicy.common;

import lombok.Data;

@Data
public class LikeBoardVO {
	
	String boardType;
	int bno;
	String Email;
	
	
	public LikeBoardVO(String Email, int no) {
		this.Email = Email;
		this.bno = no;
	}
}
