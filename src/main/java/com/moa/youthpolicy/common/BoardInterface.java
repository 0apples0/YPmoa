package com.moa.youthpolicy.common;

import java.util.List; 

public interface BoardInterface {
	public <T> void delBoard(Class<T> board);   // �Խ��� ����
	public <T> void modBoard(Class<T> board);	// �Խñ� ����
	public <T> T getBoard(Class<T> board);		// �Խñ� �ڼ�������
	public <T> List<T> getPage(Criteria cri, BoardDTO dto);	// ����¡
	public int getTotalAmount();	// ��ü�� ��������
}
