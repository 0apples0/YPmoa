package com.moa.youthpolicy.policy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moa.youthpolicy.policy.domain.PolicyVO;
import com.moa.youthpolicy.policy.service.PolicyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/policy/*")
@AllArgsConstructor
@Log4j
public class PolicyController { 
	@Autowired
	PolicyService service;
	
	@ResponseBody
	@PostMapping("/get5policy")
	public List<PolicyVO> getfiveBoard(){
		List<PolicyVO> list = service.getfiveboard();
		System.out.println("controller : "+ list.get(0).toString());
		return list;
	}
	
	@GetMapping("/policy")
	public void policy() {
		
	}
	@GetMapping("/get")
	public void getpolicy() {
		
	}	
	
}
