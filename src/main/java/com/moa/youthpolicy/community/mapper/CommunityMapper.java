package com.moa.youthpolicy.community.mapper;

import java.util.List;

import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.community.domain.CommunityCommentVO;
import com.moa.youthpolicy.community.domain.CommunityVO;
import com.moa.youthpolicy.policy.domain.PolicyVO;

public interface CommunityMapper {
	public List<CommunityVO> select();
	public int delete(Integer key);
	public int getTotalCount(Criteria cri);
	public List<CommunityVO> getListWithPaging(Criteria cri);
	public CommunityVO getBoard(Integer key);
	//추가
	public int getCommentTotalCount(Integer key);
	public List<CommunityCommentVO> getCommentListWithPaging(Criteria cri);
	public List<CommunityCommentVO> getBestCommentList(Criteria cri);
	public List<CommunityVO> getfiveboard();

}
