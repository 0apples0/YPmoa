package com.moa.youthpolicy.suggest.service;

import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.moa.youthpolicy.common.AuthUtil;
import com.moa.youthpolicy.common.BoardGenericService;
import com.moa.youthpolicy.common.BoardReportVO;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.suggest.domain.SuggestVO;
import com.moa.youthpolicy.suggest.mapper.SuggestMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class SuggestService implements BoardGenericService<SuggestVO> {

	private final SuggestMapper suggestMapper;
	private final HttpSession session;

	// index.jsp 내의 최신 5개 글
	public List<SuggestVO> getfiveboard() {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		List<SuggestVO> list = suggestMapper.getfiveboard();
		return list;
	}

	@Override
	public boolean delBoard(SuggestVO board) {
		// TODO Auto-generated method stub
		int result = suggestMapper.deleteBoard(board.getBno());

		return result == 1; // 삭제가 성공하면 true, 실패하면 false를 반환합니다.
	}

	@Override
	public boolean modBoard(SuggestVO vo) {
		log.info("수정 service : " + vo);

		// 수정된 내용을 Mapper를 통해 DB에 반영
		int result = suggestMapper.modifyBoard(vo);

		return result == 1; // 수정된 행이 1개일 경우 true 반환

	}

	@Override
	public SuggestVO getBoard(Integer key) {
		log.info("getBoard test");
		return suggestMapper.getBoard(key);
	}

	// 게시글 검색
	@Override
	public List<SuggestVO> getPage(Criteria cri) {
		log.info("------service in getList------");
		log.info(cri);
		List<SuggestVO> result = suggestMapper.getListWithPaging(cri);
		log.info("------service out getList------");
		log.info(result);
		return result;
	}

	@Override
	public int getTotalAmount(Criteria cri) {
		int cnt = suggestMapper.getTotalCount(cri);
		return cnt;
	}

	@Override
	public void writeBoard(SuggestVO boardVO) {
		// TODO Auto-generated method stub

	}

	// 게시글 좋아요
	@Override
	public SuggestVO toggleLike(SuggestVO boardVO) {
		log.info("Toggle Like service");
		
		if(AuthUtil.isLogin()) {
			String userEmail = AuthUtil.getCurrentUserAccount();
			int userLikeCount = suggestMapper.checkUserLike(boardVO.getBno(), userEmail);
			if (userLikeCount == 0) {
				// 좋아요 정보가 없으면 좋아요 추가
				suggestMapper.addLike(boardVO.getBno(), userEmail);
				// 좋아요가 추가되었으므로 해당 게시글의 좋아요 수를 1 증가시킴
				suggestMapper.updateSuggestedBoardLikeCount(boardVO.getBno(), 1);
			} else {
				// 좋아요 정보가 있으면 좋아요 삭제
				suggestMapper.removeLike(boardVO.getBno(), userEmail);
				// 좋아요가 삭제되었으므로 해당 게시글의 좋아요 수를 1 감소시킴
				suggestMapper.updateSuggestedBoardLikeCount(boardVO.getBno(), -1);
			}
		}
		// 최종적인 좋아요 수를 반환
		return getLikeCount(boardVO.getBno());

	}

	// 사용자가 해당 게시글에 대해 좋아요를 했는지 확인
	public int checkUserLike(int bno, String userEmail) {
		return suggestMapper.checkUserLike(bno, userEmail);
	}

	// 좋아요 개수 가져오기
	public SuggestVO getLikeCount(int bno) {
		return suggestMapper.getLikeCount(bno);
	}

	// 게시글 등록
	public void write(SuggestVO vo) {
		suggestMapper.write(vo);
	}


	// 게시글 신고
	public boolean reportBoard(BoardReportVO vo) {
		try {
			BoardReportVO _vo = suggestMapper.getReportBoard(vo);
			if (_vo == null) {
				suggestMapper.reportBoard(vo);
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			log.error("게시글 신고 중 오류 발생: ");
			return false;
		}
	}

	// 새글 알람
	public List<Integer> newBoardAlarm() {
		List<Integer> result = suggestMapper.alarmNew();
		return result;
	}

}
