package com.moa.youthpolicy.wish.service;

import java.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moa.youthpolicy.common.AuthUtil;
import com.moa.youthpolicy.common.BoardInterface;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.policy.domain.PolicyVO;
import com.moa.youthpolicy.policy.mapper.PolicyMapper;
import com.moa.youthpolicy.user.domain.UserVO;
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
		log.info("서비스의: "+list);
		if (AuthUtil.isLogin()) {
			for (PolicyVO vo : list) {
				WishVO wish = new WishVO(AuthUtil.getCurrentUserAccount(), vo.getNo());
				vo.setWishVO(mapper.getWish(wish));
			}
			return list;
		}else {
			log.info("로그인 안되서 안가져옴");
			return Collections.emptyList();
		}
		
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
			log.info("wish 넘버 " + vo.getWishPolicy());
			log.info("wish지우기" + wish);

			mapper.delWish(wish);

		}
	}

		public int wishAlarm(WishVO vo) {
			 int currentIsAlert = mapper.alarmWish(vo);
			    // 새로운 isAlert 값을 계산 (0과 1을 반전)
			    int newIsAlert = (currentIsAlert == 0) ? 1 : 0;
			    // 새로운 isAlert 값을 업데이트
			    vo.setIsAlert(newIsAlert);
			    int result = mapper.updateIsAlert(vo);
			    return newIsAlert;
	    
		  
		}

		  public Map<Integer, Integer> clearAlarm() {
		        // 데이터베이스에서 모든 정책의 알람 상태를 가져오기
		        List<WishVO> wishList = mapper.getAlarm();

		        // 정책 ID와 알람 상태를 담을 맵 초기화
		        Map<Integer, Integer> buttonStates = new HashMap<>();

		        // 가져온 정보를 맵에 저장
		        for (WishVO wish : wishList) {
		            buttonStates.put(wish.getWishPolicy(), wish.getIsAlert());
		        }

		        return buttonStates;
		    }

	

		public int endDateAlarm() {
			int result = mapper.getEndAlarm();
			log.info("마감알람 개수: "+result);
			return result;
		}

	






	



}
