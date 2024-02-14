package com.moa.youthpolicy.common;

import java.util.List;

import com.moa.youthpolicy.policy.domain.PolicyVO;


public interface BoardInterface<T> {
	public boolean delBoard(T board);   // 글 삭제
	public boolean modBoard(T board);	// 글 수정
	public List<T> getPage(Criteria cri);	// 페이징
	public T getBoard(Integer key);		// 글 자세히보기
	public int getTotalAmount(Criteria cri);	// 전체글 카운팅
	
}
