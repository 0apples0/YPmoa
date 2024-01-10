package com.moa.youthpolicy.user.domain;

import lombok.Data;

@Data
public class UserVO {
	int userType; 		// 회원 타입(0: 관리자, 1: 일반회원)
	String Email; 		// 이메일(아이디)
	String PW;    		// 비밀번호
	String name;  		// 이름
	String nick;  		// 닉네임
	int phone;    		// 전화번호

	String address;     // 맞춤조건: 지역
	int age; 			// 맞춤조건: 나이
	int income; 		// 맞춤조건: 수입
	boolean isWork; 	// 맞춤조건: 취업 유무
    public boolean isWork() {
        return isMarry;
    }
	boolean isMarry; 	// 맞춤조건: 결혼 유무
    public boolean isMarry() {
        return isMarry;
    }
	String interestField; // 맞춤조건: 관심분야
	
	int countReport;    // 신고 당한 횟수 

}
