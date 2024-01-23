package com.moa.youthpolicy.admin.mapper;

import java.util.List;

import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.community.domain.CommunityCommentVO;
import com.moa.youthpolicy.user.domain.UserVO;

public interface AdminMapper {

	public int getTotalCount(Criteria cri);
	public List<UserVO> getListWithPaging(Criteria cri);
	public int getCommentTotalCount(Criteria cri);
	public List<CommunityCommentVO> commentListPaging(Criteria cri);

}
