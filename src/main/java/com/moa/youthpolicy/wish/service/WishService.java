package com.moa.youthpolicy.wish.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.moa.youthpolicy.common.BoardInterface;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.wish.domain.WishVO;

@Service
public class WishService implements BoardInterface {

	@Override
	public <T> void delBoard(Class<T> board) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T> void modBoard(Class<T> board) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T> List<T> getPage(Criteria cri) {
		// TODO Auto-generated method stub
		return null;
	}

	

	@Override
	public int getTotalAmount(Criteria cri) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public WishVO getBoard(Integer key) {
		// TODO Auto-generated method stub
		return null;
	}


}
