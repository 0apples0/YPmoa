package com.moa.youthpolicy.common;


public interface BoardGenericService<T> extends BoardInterface<T> {
	public void writeBoard(T boardVO); // 글 쓰기
	public T toggleLike(T boardVO); // 좋아요 or 취소
	
}
