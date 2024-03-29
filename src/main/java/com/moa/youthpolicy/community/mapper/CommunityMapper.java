package com.moa.youthpolicy.community.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.moa.youthpolicy.common.BoardReportVO;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.LikeBoardVO;
import com.moa.youthpolicy.common.LikeCommentVO;
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
	public int getCommentTotalCount(Criteria cri);
	public List<CommunityCommentVO> getCommentListWithPaging(Criteria cri);
	public List<CommunityCommentVO> getBestCommentList(Criteria cri);
	public List<CommunityVO> getfiveboard();
	public CommunityCommentVO getComment(Integer key);
	public void writeComment(CommunityCommentVO comment);
	public void deleteComment(Integer cno);
	public void modComment(CommunityCommentVO comment);
	public LikeBoardVO getLike(LikeBoardVO like);
	public void delLike(LikeBoardVO like);
	public void addLike(LikeBoardVO like);
	public void modLike(CommunityVO _vo);
	
	public void delCommentLike(LikeCommentVO like);
	public LikeCommentVO getCommentLike(LikeCommentVO like);
	public void addCommentLike(LikeCommentVO like);
	public void modCommentLike(CommunityCommentVO _vo);
	
	// 글작성/삭제/수정
	public void write(CommunityVO communityVO);
	public int deleteBoard(Integer bno);
	public int modifyBoard(CommunityVO vo);
	
	// 게시글 신고
	public BoardReportVO getReportBoard(BoardReportVO vo);
	public void reportBoard(BoardReportVO vo);
	
	// 새글알람
	public List<Integer> alarmNew();
	
	// 댓글수 
	public int getCommentNm(Criteria cri);
	
}
