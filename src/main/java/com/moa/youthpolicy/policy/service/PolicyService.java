package com.moa.youthpolicy.policy.service;

import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moa.youthpolicy.common.AuthUtil;
import com.moa.youthpolicy.common.BoardGenericService;
import com.moa.youthpolicy.common.CommentsReportVO;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.LikeBoardVO;
import com.moa.youthpolicy.common.LikeCommentVO;
import com.moa.youthpolicy.community.domain.CommunityCommentVO;
import com.moa.youthpolicy.policy.domain.PolicyBoardVO;
import com.moa.youthpolicy.policy.domain.PolicyCommentVO;
import com.moa.youthpolicy.policy.domain.PolicyVO;
import com.moa.youthpolicy.policy.mapper.PolicyMapper;
import com.moa.youthpolicy.user.domain.UserVO;
import com.moa.youthpolicy.wish.domain.WishVO;
import com.moa.youthpolicy.wish.mapper.WishMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class PolicyService implements BoardGenericService<PolicyVO> {

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
	public boolean delBoard(PolicyVO vo) {
		mapper.delPolicy(vo);
		return false;
	}

	@Override
	public boolean modBoard(PolicyVO vo) {
		mapper.modBoard(vo);
		Integer no = vo.getNo();
		if(mapper.getBoard(no) != null) {
			mapper.modp_Board(vo.getBoard());
		}else {
			mapper.writePlicyBoard(vo.getBoard());
		}
		return false;
	}


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
	public void writeBoard(PolicyVO vo) {
		mapper.writePolicy(vo);
		vo.getBoard().setBno(vo.getNo());
		log.info(vo);
		mapper.writePlicyBoard(vo.getBoard());
	}
	

	@Override
	public PolicyVO toggleLike(PolicyVO vo) {
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
	public PolicyVO getBoard(Integer no) {
		PolicyVO vo = mapper.getPolicy(no);
		vo.setBoard(mapper.getBoard(no));

		if (AuthUtil.isLogin()) {
			WishVO wish = new WishVO(AuthUtil.getCurrentUserAccount(), no);
			vo.setWishVO(wishMapper.getWish(wish));
			LikeBoardVO like = new LikeBoardVO(AuthUtil.getCurrentUserAccount(), no);
			log.info(like);
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
		
		if(AuthUtil.isLogin()) {
			for(PolicyCommentVO rs : result) {
				LikeCommentVO _vo = new LikeCommentVO(AuthUtil.getCurrentUserAccount(), rs.getCno());
				rs.setLikevo(mapper.getLikeComment(_vo)); 
			}
		}
		return result;
	}
	public int getCommentTotalAmount(Criteria cri) {		
		return mapper.getCommentTotalCount(cri);
	}
	public List<PolicyCommentVO> getBestCommentPage(Criteria cri) {
		List<PolicyCommentVO> result = mapper.getBestCommentList(cri);
        if(AuthUtil.isLogin()) {
            for(PolicyCommentVO rs : result) {
                LikeCommentVO _vo = new LikeCommentVO(AuthUtil.getCurrentUserAccount(), rs.getCno());
                rs.setLikevo(mapper.getLikeComment(_vo));
            }
        }
		return result;
		
	}
	
	public void writeComment(PolicyCommentVO comment) {
		mapper.writeComment(comment);
	}
	
	public void delCommunityComment(Integer cno) {
		mapper.deleteComment(cno);		
	}
	
	public void modCommunityComment(PolicyCommentVO comment) {
		mapper.modComment(comment);
	}

	public boolean reportcomment(CommentsReportVO vo) {
		CommentsReportVO _vo = mapper.getReportComment(vo);
		log.info("vo"+vo);
		log.info("_vo" + _vo);
		if(_vo == null) {
			mapper.reportcomment(vo);
			return true;
		}else {
			return false;
		}
		
	}
	
	public PolicyCommentVO toggleCommentLike(PolicyCommentVO vo) {
		String email = AuthUtil.getCurrentUserAccount();
		LikeCommentVO like = new LikeCommentVO(email, vo.getCno());
		LikeCommentVO _vo = mapper.getLikeComment(like); //likeCommentVO
		vo = mapper.getComment(vo); // policyCommentVO
		if(_vo != null) { //likeCommentVo에 이미 좋아요 누른 이력이 존재한다면
			mapper.delLikeComment(like);
			vo.setLike(vo.getLike() - 1);
		}else {
			mapper.addLikeComment(like);
			vo.setLike(vo.getLike() + 1);
		}
		mapper.modLikeComment(vo);
		return vo;
	}

	public int checkWriterUserType(CommentsReportVO vo) {
		int result = mapper.chkUserType(vo);
		log.info("checkWriterUserType:"+result);
		return result;
	}

	public String getUrl(int bno) {
	    return mapper.getImageUrl(bno);
	}

	public void increView(Integer no) {
		mapper.increView(no);
	}

	public PolicyVO getCustomPolicy() {
		if(AuthUtil.isLogin()) {
			UserVO user = AuthUtil.getCurrentUserEntitiy();
			return mapper.getCustomPolicy(user);
		}else {
			return mapper.getCustomPolicy(null);
		}
		
		
	}

	public PolicyVO getBestPolicy() {
		return mapper.getBestPolicy();
	}



}
