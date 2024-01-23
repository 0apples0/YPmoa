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
	public List<PolicyVO> getfiveBoard(){
		List<PolicyVO> list = wishService.getfiveboard();
		return list;
	}
	
	
	@RequestMapping(value = {"/wish", "/wishPaging"}, method = {RequestMethod.GET,  RequestMethod.POST })
	public void wish(Criteria cri, Model model) {
		cri.setAmount(8);
		int total = wishService.getTotalAmount(cri); 
		log.info("전체글"+ total);
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
		
	}
	
	// 위시한 policy 리스트 가져오기 
	@ResponseBody
	@RequestMapping(value = "/get", method = {RequestMethod.GET, RequestMethod.POST})
	public List<PolicyVO> get(Criteria cri){
		List<PolicyVO> result =  wishService.getPage(cri);
		return result;
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
	public int alarm(@RequestBody WishVO vo) {
	    int result = wishService.wishAlarm(vo);
	    log.info("알람 설정 완료 "+result);
	    return result;
	}
	
	@ResponseBody
	@GetMapping("/alarmClear")
	  public Map<Integer, Integer> alarmClear() {
        // 서비스에서 현재 버튼 상태를 가져오는 메서드 호출
        Map<Integer, Integer> buttonStates = wishService.clearAlarm();
        return buttonStates;
    }


	@ResponseBody
	@GetMapping("/search")
	public List<PolicyVO> search(Criteria cri) {
	    // 여기서 받은 파라미터를 이용하여 검색 로직을 수행하고, 결과를 반환합니다.
	    List<PolicyVO> searchResult = wishService.searchWish(cri);
	    return searchResult;
	}

	

	
	
	
	
	
}
