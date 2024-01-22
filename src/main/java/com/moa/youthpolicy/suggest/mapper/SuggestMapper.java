package com.moa.youthpolicy.suggest.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	public int deleteBoard(Integer bno);
	
    public int addLike(@Param("bno") int bno, @Param("Email") String email);
    public int removeLike(@Param("bno") int bno, @Param("Email") String email);
    public int checkUserLike(@Param("bno") int bno, @Param("Email") String email);
}
