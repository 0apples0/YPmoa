package com.moa.youthpolicy.admin.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.moa.youthpolicy.admin.domain.AdminVO;
import com.moa.youthpolicy.admin.mapper.AdminMapper;
import com.moa.youthpolicy.common.BoardReportVO;
import com.moa.youthpolicy.common.CommentsReportVO;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.UserGenericService;
import com.moa.youthpolicy.user.domain.UserVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class AdminService implements UserGenericService{
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
	
	public int getTotalCommentAmount(Criteria cri) {
		int cnt = adminMapper.getCommentTotalCount(cri);
		return cnt;
	}
	
	public List<AdminVO> getCommentPage(Criteria cri) {
		log.info("------service in getCommentPage------");
		log.info(cri);
		List<AdminVO> result = adminMapper.commentListPaging(cri);
		log.info("------service out getCommentPage------");
		log.info(result);
		return result;
	}

	public int getBoardTotalAmount(Criteria cri) {
		int cnt = adminMapper.getBoardTotalCount(cri);
		log.info("---getBoardTotalAmount");
		return cnt;
	}
	public List<AdminVO> getBoardPage(Criteria cri) {
		log.info("---getBoardPage");
		List<AdminVO> result = adminMapper.boardListWithPaging(cri);
		log.info(result.toString());
		return result;
	}
	@Override
	public void delMember(UserVO vo) {
		log.info("---delMember");
		adminMapper.delMember(vo);
		
	}

	// 게시글 삭제, user 테이블 내 countReport 값 1 증가
	public void delBoard(Criteria cri) {
		adminMapper.delBoard(cri);

		adminMapper.updateUserCountReport(cri);

		log.info("---delBoard criteria:"+cri.toString());

	}
	
	// boardreport 테이블 내 ischecked 상태 업데이트 
	public void updateBoardReport(Criteria cri) {
		adminMapper.updateBoardReport(cri);
		log.info("---updateBoard criteria:"+cri.toString());
	}

	// 게시글 신고사유 모달에 담을 데이터 추출
	public List<BoardReportVO> getBoardReportDetail(Criteria cri) {
		List<BoardReportVO> reportvo = adminMapper.getBoardReportDetail(cri);
		log.info("---reportDetail:"+reportvo.toString());
		return reportvo;
	}

	// 댓글 삭제, user 테이블 내 countCommentReport 값 1 증가
	public void deleteComment(Criteria cri) {
		adminMapper.deleteComment(cri);
		adminMapper.updateCommentCountReport(cri);
		log.info("---deleteComment criteria:"+cri.toString());
	}

	// commentreport 테이블 내 ischecked 상태 업데이트 
	public void updateCommentReport(Criteria cri) {
		adminMapper.updateCommentReport(cri);
		log.info("---updateComment criteria:"+cri.toString());
	}

	// 댓글 신고사유 모달에 담을 데이터 추출
	public List<CommentsReportVO> getCommentReportDetail(Criteria cri) {
		List<CommentsReportVO> reportvo = adminMapper.getCommentReportDetail(cri);
		log.info("---commentreportDetail:"+reportvo.toString());
		return reportvo;
	}

}
