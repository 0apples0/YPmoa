package com.moa.youthpolicy.suggest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.moa.youthpolicy.common.BoardGenericService;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.community.domain.CommunityVO;
import com.moa.youthpolicy.suggest.domain.SuggestVO;
import com.moa.youthpolicy.suggest.mapper.SuggestMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class SuggestService implements BoardGenericService{

	private final SuggestMapper suggestMapper;

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
		// 추가
        for (SuggestVO suggestVO : result) {
            int likeCount = suggestMapper.getLikeCount(suggestVO.getBno());
            suggestVO.setLike(likeCount);
        }
		// -----
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

	@Override
	public <T> void toggleLike(T boardVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void getBack() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T> T getBoard(Class<T> board) {
		// TODO Auto-generated method stub
		return null;
	}

	// 좋아요 값 가져오는거 추가
    public int getLikeCount(int bno) {
        return suggestMapper.getLikeCount(bno);
    }

}
