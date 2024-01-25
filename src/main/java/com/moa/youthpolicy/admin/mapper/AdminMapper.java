package com.moa.youthpolicy.admin.mapper;

import java.util.List;

import com.moa.youthpolicy.admin.domain.AdminVO;
import com.moa.youthpolicy.common.BoardReportVO;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.user.domain.UserVO;

public interface AdminMapper {

	public int getTotalCount(Criteria cri);
	public List<UserVO> getListWithPaging(Criteria cri);
	public int getCommentTotalCount(Criteria cri);
	public List<AdminVO> commentListPaging(Criteria cri);
	public void delMember(UserVO vo);
	public int getBoardTotalCount(Criteria cri);
	public List<AdminVO> boardListWithPaging(Criteria cri);
	//게시글 삭제(isdeleted 컬럼 업데이트)
	public void delBoard(Criteria cri);
	public void updateBoardReport(Criteria cri);
	public List<BoardReportVO> getBoardReportDetail(Criteria cri);
	public void updateUserCountReport(Criteria cri);

}
