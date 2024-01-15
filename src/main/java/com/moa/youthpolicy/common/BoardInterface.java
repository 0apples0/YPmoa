package com.moa.youthpolicy.common;

import java.util.List; 

public interface BoardInterface {
	public <T> void delBoard(Class<T> board);   // 글 삭제
	public <T> void modBoard(Class<T> board);	// 글 수정
	public <T> T getBoard(Class<T> board);		// 글 자세히보기
	public <T> List<T> getPage(Criteria cri);	// 페이징
	public <T> T getBoard(Integer key);		// 글 자세히보기
	//public <T> List<T> getPage(Criteria cri, PageDTO dto);	// 페이징
	public int getTotalAmount(Criteria cri);	// 전체글 카운팅
}
