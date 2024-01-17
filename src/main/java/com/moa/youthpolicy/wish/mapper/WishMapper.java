package com.moa.youthpolicy.wish.mapper;

import com.moa.youthpolicy.wish.domain.WishVO;

public interface WishMapper {
	public WishVO getWish(WishVO vo);
	public void delWish(WishVO vo);
	public void addWish(WishVO vo);
}
