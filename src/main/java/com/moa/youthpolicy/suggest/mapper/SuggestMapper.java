package com.moa.youthpolicy.suggest.mapper;

import java.util.List;

import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.suggest.domain.SuggestVO;

public interface SuggestMapper {
	public List<SuggestVO> select();
	public void write(SuggestVO suggestVO);
	public int delete(Integer key);
	public int getTotalCount(Criteria cri);
	public List<SuggestVO> getListWithPaging(Criteria cri);
	public SuggestVO getBoard(Integer key);
	public int update(SuggestVO board);
	public int modifyBoard(SuggestVO suggestVO);
}
