package com.moa.youthpolicy.suggest.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.moa.youthpolicy.common.BoardGenericService;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.suggest.domain.SuggestVO;
import com.moa.youthpolicy.suggest.mapper.SuggestMapper;
import com.moa.youthpolicy.user.domain.UserVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class SuggestService implements BoardGenericService{

	private final SuggestMapper suggestMapper;
	private final HttpSession session;
	

	@Override
	public <T> void delBoard(Class<T> board) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T> void modBoard(Class<T> board) {
		log.info("modify");
		
	}

	@Override
	public SuggestVO getBoard(Integer key) {
		log.info("getBoard test");
		return suggestMapper.getBoard(key);
	}

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
	public <T> void writeBoard(T boardVO) {
		// TODO Auto-generated method stub
		
	}

	// 게시글 좋아요
	@Override
	public <T> void toggleLike(T boardVO) {
	    log.info("Toggle Like service");

	    SuggestVO suggestVO = (SuggestVO) boardVO;

	    // 세션에서 사용자 정보 가져오기
	    UserVO user = (UserVO) session.getAttribute("user");
	    if (user == null) {
	        log.warn("로그인한 사용자의 정보가 세션에 없습니다.");
	        return;
	    }
	    String userEmail = user.getEmail();

	    // 사용자의 특정 게시글 좋아요 여부 확인
	    int userLikeCount = suggestMapper.checkUserLike(suggestVO.getBno(), userEmail);

	    if (userLikeCount == 0) {
	        // 좋아요 정보가 없으면 좋아요 추가
	        suggestMapper.addLike(suggestVO.getBno(), userEmail);
	    } else {
	        // 좋아요 정보가 있으면 좋아요 삭제
	        suggestMapper.removeLike(suggestVO.getBno(), userEmail);
	    }
	}	

	public int checkUserLike(int bno, String userEmail) {
	    return suggestMapper.checkUserLike(bno, userEmail);
	}
	
	@Override
	public void getBack() {
		// TODO Auto-generated method stub
		
	}

	// 게시글 등록
	public void write(SuggestVO vo) {
		suggestMapper.write(vo);
	}
	
	
	// 게시글 수정 처리
    public boolean modifyBoard(SuggestVO vo) {
        log.info("수정 service : " + vo);

        // 수정된 내용을 Mapper를 통해 DB에 반영
        int result = suggestMapper.modifyBoard(vo);

        return result == 1; // 수정된 행이 1개일 경우 true 반환
    }

    // 게시글 삭제
	public boolean removeBoard(Integer bno) {
		// TODO Auto-generated method stub
        int result = suggestMapper.deleteBoard(bno);

        return result == 1; // 삭제가 성공하면 true, 실패하면 false를 반환합니다.
    }


}
