package com.moa.youthpolicy.suggest.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.suggest.domain.SuggestVO;

public interface SuggestMapper {
	public List<SuggestVO> select();
	public int delete(Integer key);
	public int getTotalCount(Criteria cri);
	public List<SuggestVO> getListWithPaging(Criteria cri);
	public SuggestVO getBoard(Integer key);
	public int getLikeCount(int bno); // 좋아요 수 가져오기
}
