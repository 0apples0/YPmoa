package com.moa.youthpolicy.community.mapper;

import java.util.List;

import com.moa.youthpolicy.community.domain.CommunityVO;

public interface CommunityMapper {
	public List<CommunityVO> select();
	public int delete(Integer key);
	public int countCommunityVO();
}
