package com.moa.youthpolicy.policy.domain;

import java.sql.Date;

import com.moa.youthpolicy.common.LikeBoardVO;
import com.moa.youthpolicy.wish.domain.WishVO;

import lombok.Data;

@Data
public class PolicyVO {
	
	Integer no; //정책번호
	int like;
	int view;
	String rgnSeNm;  // 지역
	String sprvsnInstNm; // 시행처
	String policyNm;    //정책이름
	String policyTypeNm; //정책 유형
	String policyCn; // 정책내용
	String policyCnDtl; // 지원대상
	String policyScl; // 지원규모
	String policyEnq; //연락처
	String dtlLinkUrl; //지원사이트
	Date crtDt;     // 게시글 업데이트
	Date aplyBgngDt; //신청시작날짜
	Date aplyEndDt; //신청마감날짜
	Date updtDt;   // 업데이트시간
	
	int isdeleted; //삭제 여부
	PolicyBoardVO board;
	WishVO wishVO;
	LikeBoardVO likeVO;
}
