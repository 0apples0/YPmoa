package com.moa.youthpolicy.wish.service;

import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moa.youthpolicy.common.AuthUtil;
import com.moa.youthpolicy.common.BoardInterface;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.policy.domain.PolicyVO;
import com.moa.youthpolicy.policy.mapper.PolicyMapper;
import com.moa.youthpolicy.wish.domain.WishVO;
import com.moa.youthpolicy.wish.mapper.WishMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class WishService implements BoardInterface {
	
	@Autowired
	WishMapper mapper;

	@Autowired
	PolicyMapper policyMapper;
	@Override
	public <T> void delBoard(Class<T> board) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T> void modBoard(Class<T> board) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<PolicyVO> getPage(Criteria cri){
		List<PolicyVO> list = mapper.getWishList(cri);
		log.info(cri);
		return list;
	}


	@Override
	public int getTotalAmount(Criteria cri) {
		return mapper.getTotalCount(cri);

	}
	
	@Override
	public WishVO getBoard(Integer key) {
		// TODO Auto-generated method stub
		return null;
	}

	public WishVO getEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}



	public List<PolicyVO> getfiveboard() {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		List<PolicyVO> list = mapper.getfiveboard();
		return list;
	}
	
	
	public List<PolicyVO> getWishList() {
		List<PolicyVO> list = mapper.wishList();
		return list;
	}

	public void delWish(WishVO vo) {
		if (AuthUtil.isLogin()) {
			WishVO wish = new WishVO(AuthUtil.getCurrentUserAccount(), vo.getWishPolicy());
			log.info("wish 넘버 "+vo.getWishPolicy());
			log.info("wish지우기" + wish);
	
				mapper.delWish2(wish);
			
			
			
		}
	}


	



}
