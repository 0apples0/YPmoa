package com.moa.youthpolicy.wish.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moa.youthpolicy.common.AuthUtil;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.policy.domain.PolicyVO;
import com.moa.youthpolicy.user.domain.UserVO;
import com.moa.youthpolicy.wish.domain.WishVO;
import com.moa.youthpolicy.wish.mapper.WishMapper;
import com.moa.youthpolicy.wish.service.WishService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/wish/*")
@AllArgsConstructor
@Log4j
public class WishController {
	@Autowired
	WishService wishService;
	WishMapper wishMapper;
	
	// 메인화면에 게시글 5개 띄우기
	@ResponseBody
	@PostMapping("/getfiveBoard")
	public List<PolicyVO> getfiveBoard(){
		List<PolicyVO> list = wishService.getfiveboard();
		return list;
	}
	
	// wish페이지 띄우기, 페이징 숫자 조절
	@RequestMapping(value = {"/wish", "/wishPaging"}, method = { RequestMethod.POST })
	public void wish(Criteria cri, Model model) {
		cri.setAmount(8);
		int total = wishService.getTotalAmount(cri); 
		log.info("전체글"+ total);
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
		
	}
	
	// 위시한 policy 리스트 가져오기
	@ResponseBody
	@RequestMapping(value = "/get", method = RequestMethod.POST)
	public List<PolicyVO> get(Criteria cri){
		log.info("등록한 위시 가져오기");
		log.info(cri);
		return wishService.getPage(cri);
	}

	
	// 위시 삭제
	@ResponseBody
	@PostMapping("/del")
	public void del(WishVO vo) {
	    // 실제 삭제 작업
	    wishService.delWish(vo);
	    log.info("삭제완료");
	}

	
	// 알림 받기
	@ResponseBody
	@PostMapping("/alarm")
	public Map<String, Object> alarm(WishVO vo) {
	    Map<String, Object> response = new HashMap<>();
	    try {
	        if (AuthUtil.isLogin()) {
	            WishVO wish = new WishVO(AuthUtil.getCurrentUserAccount(), vo.getWishPolicy(), vo.isIsalert());
	            log.info("wish 알람은 현재: " + vo.isIsalert());
	            log.info("알람할 wish: " + wish);

	            // 서비스에서 알림 상태를 업데이트하고 업데이트된 상태를 응답에 포함
	            Boolean updatedIsAlert = wishService.wishAlarm(wish);
	            response.put("isalert", updatedIsAlert);
	            response.put("success", true);
	            response.put("message", "알림 설정이 업데이트되었습니다.");
	        } else {
	            response.put("success", false);
	            response.put("message", "로그인이 필요합니다.");
	        }
	    } catch (Exception e) {
	        response.put("success", false);
	        response.put("message", "알림 설정 업데이트 중 오류가 발생했습니다.");
	        log.error("알림 설정 업데이트 중 오류", e);
	    }
	    return response;
	}


	

	
	
	
	
	
}
