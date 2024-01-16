package com.moa.youthpolicy.policy.mapper;

import java.util.List;

import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.policy.domain.PolicyVO;

public interface PolicyMapper {
	public List<PolicyVO> getfiveboard();	
	public List<PolicyVO> getListWithPasing(Criteria cri);
	public int getTotalCount(Criteria cri);
}
