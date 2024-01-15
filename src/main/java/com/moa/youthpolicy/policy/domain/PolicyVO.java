package com.moa.youthpolicy.policy.domain;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class PolicyVO {
	
	Integer no; //정책번호
	String rgnSeNm;  // 지역
	String sprvsnInstNm; // 시행처
	String policyNm;    //정책이름
	String updtDt;   // 업데이트시간
	String policyTypeNm; //정책 유형
	String policyCnDtl; // 지원대상
	String policyScl; // 지원규모
	String policyEnq; //연락처
	String dtlLinkUrl; //지원사이트
	String crtDt;     // 게시글 업데이트
	String aplyBgngDt; //신청시작날짜
	String aplyEndDt; //신청마감날짜
	LocalDateTime updtDt_date;
	LocalDateTime crtDt_date;
	LocalDateTime aplyBgngDt_date;
	LocalDateTime aplyEndDt_date;
	
	PolicyBoardVO policyBoardVO;
	

}
