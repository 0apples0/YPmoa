package com.moa.youthpolicy.common;

public interface BoardGenericService extends BoardInterface {
	public <T> void writeBoard(T boardVO); // �� ���� 
	public <T> void toggleLike(T boardVO); //�� ���ƿ� or ���
	public void getBack(); // �ڷΰ���
}
