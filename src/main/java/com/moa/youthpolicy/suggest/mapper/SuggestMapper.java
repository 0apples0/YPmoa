package com.moa.youthpolicy.suggest.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.moa.youthpolicy.common.BoardReportVO;
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
	public List<SuggestVO> getfiveboard();
    public int addLike(@Param("bno") int bno, @Param("Email") String email);
    public int removeLike(@Param("bno") int bno, @Param("Email") String email);
    int checkUserLike(@Param("bno") int bno, @Param("Email") String Email);
    // 좋아요 수 갱신 메서드 추가
    int updateSuggestedBoardLikeCount(@Param("bno") int bno, @Param("like") int like);
    // 좋아요 수 가져오기
    int getLikeCount(@Param("bno") int bno);
    // 게시글 신고
	public BoardReportVO getReportBoard(BoardReportVO vo);
	public void reportBoard(BoardReportVO vo);
    
}
