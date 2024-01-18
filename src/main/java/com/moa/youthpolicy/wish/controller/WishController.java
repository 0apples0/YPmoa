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
	
	
	// 위시리스트 띄우기
	@ResponseBody
	@RequestMapping(value = "/getList", method = RequestMethod.POST)
	public List<PolicyVO> getList(){
		log.info("위시 가져오기");
		return wishService.getWishList();
	}

	// 검색
	@RequestMapping(value = { "/wish"}, method = { RequestMethod.GET })
	public void wish(Criteria cri, Model model) {
		cri.setAmount(8);
		int total = wishService.getTotalAmount(cri); 
		log.info(cri);
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
	}
	
	
}
