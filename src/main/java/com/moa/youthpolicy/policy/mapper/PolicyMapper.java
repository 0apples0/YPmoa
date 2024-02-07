package com.moa.youthpolicy.policy.mapper;

import java.util.List;

import com.moa.youthpolicy.common.CommentsReportVO;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.LikeBoardVO;
import com.moa.youthpolicy.common.LikeCommentVO;
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
	public void modLike(PolicyVO _vo);
	public void modBoard(PolicyVO _vo);
	public void modp_Board(PolicyBoardVO _vo);
	public List<PolicyCommentVO> getCommentListWithPaging(Criteria cri);
	public int getCommentTotalCount(Criteria cri);
	public List<PolicyCommentVO> getBestCommentList(Criteria cri);
	public void writePolicy(PolicyVO vo);
	public void writePlicyBoard(PolicyBoardVO vo);
	public void delPolicy(PolicyVO vo);
	public void writeComment(PolicyCommentVO comment);
	public void deleteComment(Integer cno);
	public void modComment(PolicyCommentVO comment);
	public void reportcomment(CommentsReportVO vo);
	public CommentsReportVO getReportComment(CommentsReportVO vo);
	public LikeCommentVO getLikeComment(LikeCommentVO vo);
	public void delLikeComment(LikeCommentVO vo);
	public void addLikeComment(LikeCommentVO vo);
	public void modLikeComment(PolicyCommentVO vo);
	public PolicyCommentVO getComment(PolicyCommentVO vo);
	public int chkUserType(CommentsReportVO vo);
	 String getImageUrl(int bno);
}
