package com.moa.youthpolicy.policy.service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.common.BoardGenericService;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.policy.domain.PolicyVO;
import com.moa.youthpolicy.policy.mapper.PolicyMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class PolicyService implements BoardGenericService {
	
	@Autowired
	PolicyMapper mapper;
	
	public List<PolicyVO> getfiveboard(){		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		List<PolicyVO> list = mapper.getfiveboard();

		for (PolicyVO board : list) {
		    board.setUpdtDt_date(LocalDateTime.parse(board.getUpdtDt(), formatter));
		}
		
		return list;
	}

	@Override
	public <T> void delBoard(Class<T> board) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T> void modBoard(Class<T> board) {
		// TODO Auto-generated method stub
		
	}
	
/*
	@Override
	public <T> T getBoard(Class<T> board) {
		// TODO Auto-generated method stub
		return null;
	}
/*
	@Override
	public List<PolicyVO> getPage(Criteria cri) {
		List<PolicyVO> result = mapper.getListWithPasing(cri);
		return result;
	}
*/
	@Override
	public List<PolicyVO> getPage(Criteria cri) {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");		
		List<PolicyVO> list = mapper.getListWithPasing(cri);
		for (PolicyVO board : list) {
		    board.setCrtDt_date(LocalDateTime.parse(board.getCrtDt(), formatter));
		}
		
		return list;
	}
	
	@Override
	public int getTotalAmount(Criteria cri) {
		return mapper.getTotalCount(cri);
		
	}

	@Override
	public <T> void writeBoard(T boardVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T> void toggleLike(T boardVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void getBack() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T> T getBoard(Integer key) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T> T getBoard(Class<T> board) {
		// TODO Auto-generated method stub
		return null;
	}

}
