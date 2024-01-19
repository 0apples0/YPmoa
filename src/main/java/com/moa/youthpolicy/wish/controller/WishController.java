package com.moa.youthpolicy.wish.controller;

import java.util.List;

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

	
	

	
	
	
	
	
}
