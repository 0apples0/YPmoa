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
	public int deleteBoard(Integer bno);
	
    // 좋아요 추가
    void addLike(int bno, String email);

    // 좋아요 삭제
    void removeLike(int bno, String email);

    // 특정 게시글의 좋아요 수 가져오기
    int getLikeCount(int bno);

    // 사용자의 특정 게시글 좋아요 여부 확인
    int checkUserLike(int bno, String email);
}
