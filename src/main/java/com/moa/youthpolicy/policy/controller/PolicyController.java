package com.moa.youthpolicy.policy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.PageDTO;
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
		return list;
	}
	
	@RequestMapping(value = { "/policy", "/policyPost" }, method = { RequestMethod.GET, RequestMethod.POST })
	public void policy(Criteria cri, Model model) {
		cri.setAmount(8);
		int total = service.getTotalAmount(cri); // tbl_board테이블의 모든 행의 갯수
		log.info(cri);
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
	}
	
	@ResponseBody
	@RequestMapping(value = "/getList", method = RequestMethod.POST)
	public List<PolicyVO> getList(Criteria cri){
		log.info(cri);
		return service.getPage(cri);
	}
	@GetMapping("/get")
	public void getpolicy(PolicyVO vo, Model model) {
		log.info("NO:" + vo.getNo());
		model.addAttribute("policy", service.getBoard(vo.getNo())); 
		
	}
	
	
	
}
