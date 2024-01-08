package com.moa.youthpolicy.common;

public interface BoardGenericService extends BoardInterface {
	public <T> void writeBoard(T boardVO); // 글 쓰기 
	public <T> void toggleLike(T boardVO); //글 좋아요 or 취소
	public void getBack(); // 뒤로가기
}
