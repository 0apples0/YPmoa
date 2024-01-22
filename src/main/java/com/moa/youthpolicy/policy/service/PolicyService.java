package com.moa.youthpolicy.policy.service;

import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moa.youthpolicy.common.AuthUtil;
import com.moa.youthpolicy.common.BoardGenericService;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.LikeBoardVO;
import com.moa.youthpolicy.community.domain.CommunityCommentVO;
import com.moa.youthpolicy.policy.domain.PolicyCommentVO;
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
	public void delBoard(PolicyVO vo) {
		mapper.delPolicy(vo);
	}

	@Override
	public <T> void  modBoard(Class<T> board) {
		// TODO Auto-generated method stub
		
	}
	
	public void modPolicy(PolicyVO vo) {
		log.info("수정들어온 VO : " + vo);
		mapper.modBoard(vo);
		mapper.modp_Board(vo.getBoard());
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
	
	public void wirteBoard(PolicyVO vo) {
		mapper.writePolicy(vo);
		vo.getBoard().setBno(vo.getNo());
		log.info(vo);
		mapper.writePlicyBoard(vo.getBoard());
	}

	@Override
	public <T> void toggleLike(T boardVO) {
		// TODO Auto-generated method stub

	}
	
	public PolicyVO likeToggle(PolicyVO vo) {
		PolicyVO _vo = mapper.getPolicy(vo.getNo());
		if (AuthUtil.isLogin()) {
			LikeBoardVO like = new LikeBoardVO(AuthUtil.getCurrentUserAccount(), vo.getNo());
			if(mapper.getLike(like) != null) {
				mapper.delLike(like);
				_vo.setLike(_vo.getLike() - 1);
			}else {
				mapper.addLike(like);
				_vo.setLike(_vo.getLike() + 1);
			}
			mapper.modLike(_vo);
			return _vo;
		}
		return null;
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
			LikeBoardVO like = new LikeBoardVO(AuthUtil.getCurrentUserAccount(), no);
			vo.setLikeVO(mapper.getLike(like));
		}
		return vo;
	}

	public void toggleWish(PolicyVO vo) {
		if (AuthUtil.isLogin()) {
			WishVO wish = new WishVO(AuthUtil.getCurrentUserAccount(), vo.getNo());
			if(wishMapper.getWish(wish) != null) {
				wishMapper.delWish(wish);
			}else {
				wishMapper.addWish(wish);
			}
		}
	}

	public List<PolicyCommentVO> getCommentList(Criteria cri) {
		List<PolicyCommentVO> result = mapper.getCommentListWithPaging(cri);
		return result;
	}

	public int getCommentTotalAmount(Integer bno) {		
		return mapper.getCommentTotalCount(bno);
	}

	public List<PolicyCommentVO> getBestCommentPage(Criteria cri) {
		List<PolicyCommentVO> result = mapper.getBestCommentList(cri);
		return result;
	}

}
