package com.moa.youthpolicy.common;

import java.util.List; 

public interface BoardInterface {
	public <T> void delBoard(Class<T> board);   // 게시판 삭제
	public <T> void modBoard(Class<T> board);	// 게시글 수정
	public <T> T getBoard(Class<T> board);		// 게시글 자세히보기
	public <T> List<T> getPage(Criteria cri, BoardDTO dto);	// 페이징
	public int getTotalAmount();	// 전체글 가져오기
}
