package com.moa.youthpolicy.policy.service;

import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moa.youthpolicy.common.AuthUtil;
import com.moa.youthpolicy.common.BoardGenericService;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.policy.domain.PolicyVO;
import com.moa.youthpolicy.policy.mapper.PolicyMapper;
import com.moa.youthpolicy.wish.domain.WishVO;
import com.moa.youthpolicy.wish.mapper.WishMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class PolicyService implements BoardGenericService {

	@Autowired
	WishMapper wishMapper;

	@Autowired
	PolicyMapper mapper;

	public List<PolicyVO> getfiveboard() {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		List<PolicyVO> list = mapper.getfiveboard();
		return list;
	}

	@Override
	public <T> void delBoard(Class<T> board) {
		// TODO Auto-generated method stub

	}

	@Override
	public <T> void modBoard(Class<T> board) {
		// TODO Auto-generated method stub

	}

	/*
	 * @Override public <T> T getBoard(Class<T> board) { // TODO Auto-generated
	 * method stub return null; } /*
	 * 
	 * @Override public List<PolicyVO> getPage(Criteria cri) { List<PolicyVO> result
	 * = mapper.getListWithPasing(cri); return result; }
	 */
	@Override
	public List<PolicyVO> getPage(Criteria cri) {
		List<PolicyVO> list = mapper.getListWithPasing(cri);
		if (AuthUtil.isLogin()) {
			for (PolicyVO vo : list) {

				WishVO wish = new WishVO(AuthUtil.getCurrentUserAccount(), vo.getNo());
				vo.setWishVO(wishMapper.getWish(wish));
			}
		}
		return list;
	}

	@Override
	public int getTotalAmount(Criteria cri) {
		return mapper.getTotalCount(cri);

	}

	@Override
	public <T> void writeBoard(T boardVO) {
		// TODO Auto-generated method stub

	}

	@Override
	public <T> void toggleLike(T boardVO) {
		// TODO Auto-generated method stub

	}

	@Override
	public void getBack() {
		// TODO Auto-generated method stub

	}

	@Override
	public PolicyVO getBoard(Integer no) {
		PolicyVO vo = mapper.getPolicy(no);
		vo.setBoard(mapper.getBoard(no));

		if (AuthUtil.isLogin()) {
			WishVO wish = new WishVO(AuthUtil.getCurrentUserAccount(), no);
			vo.setWishVO(wishMapper.getWish(wish));
		}
		log.info("getBoard : " + vo);
		return vo;
	}

	public void toggleWish(PolicyVO vo) {
		PolicyVO _vo = mapper.getPolicy(vo.getNo());
		if (AuthUtil.isLogin()) {
			WishVO wish = new WishVO(AuthUtil.getCurrentUserAccount(), _vo.getNo());
			if(wishMapper.getWish(wish) != null) {
				log.info("null이 아니다 : "+ wish);
				wishMapper.delWish(wish);
			}else {
				log.info("null " + wish);
				wishMapper.addWish(wish);
			}
		}
	}

}
