package com.moa.youthpolicy.wish.mapper;

import java.util.List;

import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.policy.domain.PolicyVO;
import com.moa.youthpolicy.wish.domain.WishVO;

public interface WishMapper {
	public WishVO getWish(WishVO vo);
	public void delWish(WishVO vo);
	public void addWish(WishVO vo);
	public List<PolicyVO> getWishList(Criteria cri);

	public List<PolicyVO> getfiveboard();
	public int getTotalCount(Criteria cri);
	public List<PolicyVO> wishList();
	public void delWish2(WishVO vo);

}
