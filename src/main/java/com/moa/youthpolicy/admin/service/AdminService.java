package com.moa.youthpolicy.admin.service;

import org.springframework.stereotype.Service;

import com.moa.youthpolicy.admin.mapper.AdminMapper;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.community.mapper.CommunityMapper;
import com.moa.youthpolicy.community.service.CommunityService;

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
}
