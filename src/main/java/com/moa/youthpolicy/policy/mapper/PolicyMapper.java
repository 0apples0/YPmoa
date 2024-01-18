package com.moa.youthpolicy.policy.mapper;

import java.util.List;

import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.LikeBoardVO;
import com.moa.youthpolicy.community.domain.CommunityCommentVO;
import com.moa.youthpolicy.policy.domain.PolicyBoardVO;
import com.moa.youthpolicy.policy.domain.PolicyCommentVO;
import com.moa.youthpolicy.policy.domain.PolicyVO;

public interface PolicyMapper {
	public List<PolicyVO> getfiveboard();	
	public List<PolicyVO> getListWithPasing(Criteria cri);
	public int getTotalCount(Criteria cri);
	public PolicyVO getPolicy(Integer key);
	public PolicyBoardVO getBoard(Integer key);
	public LikeBoardVO getLike(LikeBoardVO vo);
	public void delLike(LikeBoardVO like);
	public void addLike(LikeBoardVO like);
	public void modBoard(PolicyVO _vo);
	public List<PolicyCommentVO> getCommentListWithPaging(Criteria cri);
	public int getCommentTotalCount(Integer no);
	public List<PolicyCommentVO> getBestCommentList(Criteria cri);
}
