package com.moa.youthpolicy.wish.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	public List<PolicyVO> getfiveBoard(HttpSession session){
		UserVO user = (UserVO) session.getAttribute("user");
		String wishUserEmail = user.getEmail();
		List<PolicyVO> list = wishService.getfiveboard(wishUserEmail);
		return list;
	}
	
	
	@RequestMapping(value = {"/wish", "/wishPaging"}, method = {RequestMethod.GET,  RequestMethod.POST })
	public String wish(Criteria cri, Model model, HttpSession session) {
		log.info("알람: "+cri.getIsAlert());
		UserVO user = (UserVO) session.getAttribute("user");
		if(user == null) {
			//model.addAttribute("alertLoginMessage", "로그인 후 이용 가능한 서비스입니다.");
			return "redirect:/user/login";
		}
		cri.setAmount(8);
		
		int total = wishService.getTotalAmount(cri); 
		log.info("전체글"+ total);
		log.info("여기: "+cri);
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
		return "/wish/wish";
	}
	
	// 위시한 policy 리스트 가져오기 
	@ResponseBody
	@RequestMapping(value = "/get", method = {RequestMethod.GET, RequestMethod.POST})
	public List<PolicyVO> get(Criteria cri){
		List<PolicyVO> result =  wishService.getWishPage(cri);
	
		return result;
	}



	
	// 위시 삭제
	@ResponseBody
	@PostMapping("/del")
	public void del(WishVO vo) {
	    // 실제 삭제 작업
	    wishService.delBoard(vo);
	    log.info("삭제완료");
	}

	
	// 알림 받기
	@ResponseBody
	@PostMapping("/alarm")
	public int alarm(@RequestBody WishVO vo) {
		log.info("controller.alarm : "+ vo);
	    int result = wishService.wishAlarm(vo);
	    log.info("알람 설정 완료 "+result);
	    return result;
	}
	
	// 알림 상태 가져오기
	@ResponseBody
	@GetMapping("/alarmClear")
	  public Map<Integer, Integer> alarmClear(WishVO vo) {
        // 서비스에서 현재 버튼 상태를 가져오는 메서드 호출
        Map<Integer, Integer> buttonStates = wishService.clearAlarm(vo);
        return buttonStates;
    }
	
	// 알람 띄우기
	@ResponseBody
	@GetMapping("/endAlarm")
	public int endAlarm(Criteria cri) {
		int response = wishService.endDateAlarm(cri);
		if(response > 0) {
			return response;
		}
		
		return 0;
		
	}
	
   
	
	
	
	
	
}
