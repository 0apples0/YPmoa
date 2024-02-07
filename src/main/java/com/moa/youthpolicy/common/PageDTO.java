package com.moa.youthpolicy.common;

import lombok.Data;

@Data// 보빈 테스트
public class PageDTO {
	// 페이징 처리에서 표시될 시작 페이지 1
	private int startPage;
	// 페이징 처리에서 표시될 끝 페이지
	private int endPage;
	// 전체 데이터의 갯수
	private int total;
	// 이전, 다음 페이지가 있는지 여부판단
	private boolean prev, next;

	// 총 페이지 갯수 판단
	private int realEnd;
	private Criteria cri;

	// cri : 사용자가 선택한 값(request)
	// total : DB에서 확인하는 값
	public PageDTO(Criteria cri, int total) {
			this.cri = cri;
			this.total = total;

		    // 특정 페이지 그룹을 현재 페이지가 속한 그룹으로 설정
			// 나눗셈 결과 올림처리 
			// 현재 페이지 번호가 15라면 20을 반환, Math.ceil() 사용
			this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0)) * 10;
			this.startPage = this.endPage-9;
			
			// 실제 마지막 페이지 번호를 나타냄
			this.realEnd = (int)(Math.ceil((total*1.0)/cri.getAmount()));
			System.out.println(realEnd);
			
			if(this.realEnd <= this.endPage) {
				this.endPage = realEnd;
			}
			
			this.prev = this.startPage > 1;
			this.next = this.endPage < realEnd;
			System.out.println("pageDTO next : "+next);	
			
		}
}
