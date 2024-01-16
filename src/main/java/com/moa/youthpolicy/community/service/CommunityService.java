package com.moa.youthpolicy.community.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.moa.youthpolicy.common.BoardGenericService;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.community.domain.CommunityVO;
import com.moa.youthpolicy.community.mapper.CommunityMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class CommunityService implements BoardGenericService{

	private final CommunityMapper communityMapper; // 二쇱엯
	
	@Override
	public <T> void delBoard(Class<T> board) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T> void modBoard(Class<T> board) {
		log.info("modify");
		
	}

	@Override
	public CommunityVO getBoard(Integer key) {
		log.info("getBoard test");
		return communityMapper.getBoard(key);
	}

	@Override
	public List<CommunityVO> getPage(Criteria cri) {
		log.info("------service in getList------");
		log.info(cri);
		List<CommunityVO> result = communityMapper.getListWithPaging(cri);
		log.info("------service out getList------");
		log.info(result);
		return result;
	}

	@Override
	public int getTotalAmount(Criteria cri) {
		int cnt = communityMapper.getTotalCount(cri);
		return cnt;
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


}
