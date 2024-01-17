package com.moa.youthpolicy.wish.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	private final WishService wishService;
	private final WishMapper wishMapper;
	
	@GetMapping("/wish")
	public String getWish(@RequestParam("Email") String wishUser, HttpSession httpSession, Model model) {
	    log.info("위시리스트 조회");
	    WishVO user = wishService.getEmail(wishUser);
	    httpSession.setAttribute("user", wishUser);
	    model.addAttribute("user", wishUser);
	    return "wish/wish";
	}

	
	
	
}
