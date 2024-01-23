package com.moa.youthpolicy.policy.controller;

import java.util.List;

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
import com.moa.youthpolicy.common.CommentsReportVO;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.LikeCommentVO;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.community.domain.CommunityCommentVO;
import com.moa.youthpolicy.policy.domain.PolicyCommentVO;
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
	
	@GetMapping("/write")
	public void write() {}
	
	@GetMapping("/delPolicy")
	public String delPolicy(PolicyVO vo) {
		service.delBoard(vo);
		return "redirect:/policy/policy";
	}
	
	@PostMapping("/write")
	public void writePolicy(PolicyVO vo) {
		service.wirteBoard(vo);
	}
	
	@ResponseBody
	@PostMapping("/get5policy")
	public List<PolicyVO> getfiveBoard(){
		List<PolicyVO> list = service.getfiveboard();
		return list;
	}
	
	@PostMapping("/modpolicy")
	public String modify(PolicyVO vo) {
		log.info(vo.getAplyBgngDt());
		log.info(vo.getAplyEndDt());
		service.modPolicy(vo);
		return "redirect:/policy/get?no="+vo.getNo();
	}
	
	@RequestMapping(value = { "/policy", "/policyPost" }, method = { RequestMethod.GET, RequestMethod.POST })
	public void policy(Criteria cri, Model model) {
		cri.setAmount(8);
		int total = service.getTotalAmount(cri); // tbl_board테이블의 모든 행의 갯수
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
	}
	
	@ResponseBody
	@RequestMapping(value = "/getList", method = RequestMethod.POST)
	public List<PolicyVO> getList(Criteria cri){
		return service.getPage(cri);
	}
	
	@RequestMapping(value={"/get", "/modify"}, method={RequestMethod.GET, RequestMethod.POST})
	public void getpolicy(PolicyVO vo, Criteria cri , Model model) {		
		model.addAttribute("policy", service.getBoard(vo.getNo()));
		log.info(service.getBoard(vo.getNo()));
		int total = service.getCommentTotalAmount(vo.getNo());
		cri.setBno(vo.getNo());
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
	}
	
	@ResponseBody
	@PostMapping("/toggleWish")
	public void toggleWish(PolicyVO vo) {
		service.toggleWish(vo);
	}
	
	@ResponseBody
	@PostMapping("/toggleLike")
	public int toggleLike(PolicyVO vo) {
		log.info(vo);
		return service.likeToggle(vo).getLike();
	}
	
	@ResponseBody
	@PostMapping("/getCommentList")
	public List<PolicyCommentVO> getCommentList(Criteria cri){
		return service.getCommentList(cri);
	}
	
	@ResponseBody
	@RequestMapping(value="/getBestCommentList", method=RequestMethod.POST)
	public List<PolicyCommentVO> getBestCommentList(Criteria cri, Model model){
		return service.getBestCommentPage(cri);
	
	}
	
	@ResponseBody
	@PostMapping("/writeComment")
	public void addComment(PolicyCommentVO vo) {
		service.writeComment(vo);
	}
	// 댓글 삭제
	@RequestMapping(value="/deleteComment", method={RequestMethod.GET, RequestMethod.POST})
	public void delCommunityComment(@RequestParam("cno") Integer cno, @RequestParam("bno") Integer bno){
		service.delCommunityComment(cno);
	}
	
	// 댓글 수정
	@ResponseBody
	@RequestMapping(value="/modifyComment", method={RequestMethod.GET, RequestMethod.POST})
	public void modCommunityComment(@RequestParam("bno") Integer bno, PolicyCommentVO comment){
		service.modCommunityComment(comment);
	}
	
	@ResponseBody
	@PostMapping("/reportcomment")
	public boolean reportcomment(CommentsReportVO vo) {
		
		return service.reportcomment(vo);
	}
	
	@ResponseBody
	@PostMapping("/toggleCommentLike")
	public int toggleCommentLike(PolicyCommentVO vo) {
				
		return service.toggleCommentLike(vo).getLike();		
	}
	
}
