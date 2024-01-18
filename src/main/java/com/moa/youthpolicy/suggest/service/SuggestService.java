package com.moa.youthpolicy.suggest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.moa.youthpolicy.common.BoardGenericService;
import com.moa.youthpolicy.common.Criteria;
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


}
