package com.moa.youthpolicy.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.moa.youthpolicy.admin.mapper.AdminMapper;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.community.domain.CommunityVO;
import com.moa.youthpolicy.community.mapper.CommunityMapper;
import com.moa.youthpolicy.community.service.CommunityService;
import com.moa.youthpolicy.user.domain.UserVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class AdminService {
	private final AdminMapper adminMapper;
	
	public int getTotalAmount(Criteria cri) {
		int cnt = adminMapper.getTotalCount(cri);
		return cnt;
	}

	public List<UserVO> getPage(Criteria cri) {
		log.info("------service in getList------");
		log.info(cri);
		List<UserVO> result = adminMapper.getListWithPaging(cri);
		log.info("------service out getList------");
		log.info(result);
		return result;
	}
}
