package com.moa.youthpolicy.user.domain;

import lombok.Data;

@Data
public class UserVO {
	int userType; 		// �쉶�썝 ���엯(0: 愿�由ъ옄, 1: �씪諛섑쉶�썝)
	String Email; 		// �씠硫붿씪(�븘�씠�뵒)
	String PW;    		// 鍮꾨�踰덊샇
	String name;  		// �씠由�
	String nick;  		// �땳�꽕�엫
	int phone;    		// �쟾�솕踰덊샇

	String address;     // 留욎땄議곌굔: 吏��뿭
	int age; 			// 留욎땄議곌굔: �굹�씠
	int income; 		// 留욎땄議곌굔: �닔�엯
	boolean isWork; 	// 留욎땄議곌굔: 痍⑥뾽 �쑀臾�
	boolean isMarry; 	// 留욎땄議곌굔: 寃고샎 �쑀臾�
	String interestField; // 留욎땄議곌굔: 愿��떖遺꾩빞
	
	int countReport;    // �떊怨� �떦�븳 �슏�닔 

}
