package com.moa.youthpolicy.community.service;

import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.moa.youthpolicy.common.AuthUtil;
import com.moa.youthpolicy.common.BoardGenericService;
import com.moa.youthpolicy.common.BoardReportVO;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.LikeBoardVO;
import com.moa.youthpolicy.common.LikeCommentVO;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.community.domain.CommunityCommentVO;
import com.moa.youthpolicy.community.domain.CommunityVO;
import com.moa.youthpolicy.community.mapper.CommunityMapper;
import com.moa.youthpolicy.policy.domain.PolicyVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class CommunityService implements BoardGenericService<CommunityVO>{

	private final CommunityMapper communityMapper; // 二쇱엯
	
	@Override
	public boolean delBoard(CommunityVO board) {
		int result = communityMapper.deleteBoard(board.getBno());
        return result == 1; // 삭제가 성공하면 true, 실패하면 false를 반환
	}

	@Override
	public boolean modBoard(CommunityVO vo) {
		 // 수정된 내용을 Mapper를 통해 DB에 반영
        int result = communityMapper.modifyBoard(vo);
        return result == 1; // 수정된 행이 1개일 경우 true 반환
	}


	@Override
	public CommunityVO getBoard(Integer key) {
		CommunityVO _vo = communityMapper.getBoard(key);
		if (AuthUtil.isLogin()) {
			log.info("getBoard test");
			LikeBoardVO like = new LikeBoardVO(AuthUtil.getCurrentUserAccount(), key);
			_vo.setLikeVO(communityMapper.getLike(like));
		}
		return _vo;
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
	// 댓글 페이징
	public List<CommunityCommentVO> getCommentPage(Criteria cri) {
		log.info("------service in getList------");
		List<CommunityCommentVO> result = communityMapper.getCommentListWithPaging(cri);
		log.info("------service out getList------");
		log.info(result);

        if(AuthUtil.isLogin()) {
            for(CommunityCommentVO rs : result) {
                LikeCommentVO _vo = new LikeCommentVO(AuthUtil.getCurrentUserAccount(), rs.getCno());
                rs.setLikeVO(communityMapper.getCommentLike(_vo));
            }
        }
		return result;
	}	

	public int getCommentTotalAmount(Criteria cri) {
		int cnt = communityMapper.getCommentTotalCount(cri);
		return cnt;
	}

	
	// 베스트댓글 페이징
	public List<CommunityCommentVO> getBestCommentPage(Criteria cri) {
		log.info("------service in getList------");
		List<CommunityCommentVO> result = communityMapper.getBestCommentList(cri);
		log.info("------service out getList------");
		log.info(result);
        if(AuthUtil.isLogin()) {
            for(CommunityCommentVO rs : result) {
                LikeCommentVO _vo = new LikeCommentVO(AuthUtil.getCurrentUserAccount(), rs.getCno());
                rs.setLikeVO(communityMapper.getCommentLike(_vo));
            }
        }
		return result;
	}	

	// index.jsp 내의 최신 5개 글
	public List<CommunityVO> getfiveboard() {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		List<CommunityVO> list = communityMapper.getfiveboard();
		return list;
	}

	// 댓글 작성
	public void writeComment(CommunityCommentVO comment) {
		communityMapper.writeComment(comment);
	}
	// 댓글 삭제
	public void delCommunityComment(Integer cno) {
		communityMapper.deleteComment(cno);		
	}
	// 댓글 수정
	public void modCommunityComment(CommunityCommentVO comment) {
		communityMapper.modComment(comment);
	}
	@Override
	public void writeBoard(CommunityVO boardVO) {
		communityMapper.write(boardVO);
	}

	@Override
	public CommunityVO toggleLike(CommunityVO vo) {
		CommunityVO _vo = communityMapper.getBoard(vo.getBno());
		if (AuthUtil.isLogin()) {
			LikeBoardVO like = new LikeBoardVO(AuthUtil.getCurrentUserAccount(), vo.getBno());
			if(communityMapper.getLike(like) != null) {
				communityMapper.delLike(like);
				_vo.setLike(_vo.getLike() - 1);
			}else {
				communityMapper.addLike(like);
				_vo.setLike(_vo.getLike() + 1);
			}
			communityMapper.modLike(_vo);
			return _vo;
		}
		return null;
		
	}

	public CommunityCommentVO likeCommentToggle(CommunityCommentVO vo) {
		CommunityCommentVO _vo = communityMapper.getComment(vo.getCno());
		if (AuthUtil.isLogin()) {
			LikeCommentVO like = new LikeCommentVO(AuthUtil.getCurrentUserAccount(), vo.getCno());
			System.out.println(like.toString());
			if(communityMapper.getCommentLike(like) != null) {
				communityMapper.delCommentLike(like);
				_vo.setLike(_vo.getLike() - 1);
			}else {
				communityMapper.addCommentLike(like);
				_vo.setLike(_vo.getLike() + 1);
			}
			communityMapper.modCommentLike(_vo);
			return _vo;
		}
		return null;
	}



	// 게시글 신고
	public boolean reportBoard(BoardReportVO vo) {
	    try {
	        BoardReportVO _vo = communityMapper.getReportBoard(vo);
	        if (_vo == null) {
	        	communityMapper.reportBoard(vo);
	            return true;
	        } else {
	            return false;
	        }
	    } catch (Exception e) {
	        log.error("게시글 신고 중 오류 발생: " );
	        return false;
	    }
	}

	public List<Integer> newBoardAlarm() {
		 List<Integer> result = communityMapper.alarmNew();
		return result;
	}

	public int getcommentNm(Criteria cri) {
		int commentNm = communityMapper.getCommentNm(cri);
		return commentNm;
	}
	


	






}
