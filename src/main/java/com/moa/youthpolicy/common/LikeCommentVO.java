package com.moa.youthpolicy.common;

import lombok.Data;

@Data
public class LikeCommentVO {
	int cno;
	String Email;
	
	public LikeCommentVO(String Email, int cno) {
		this.Email = Email;
		this.cno = cno;
	}
}
