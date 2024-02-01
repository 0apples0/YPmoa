package com.moa.youthpolicy.policy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.moa.youthpolicy.common.AuthUtil;
import com.moa.youthpolicy.common.CommentsReportVO;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.LikeCommentVO;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.community.domain.CommunityCommentVO;
import com.moa.youthpolicy.policy.domain.PolicyBoardVO;
import com.moa.youthpolicy.policy.domain.PolicyCommentVO;
import com.moa.youthpolicy.policy.domain.PolicyVO;
import com.moa.youthpolicy.policy.service.PolicyService;
import com.moa.youthpolicy.user.domain.UserVO;

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
	public String write(HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("user");	
		if(user!=null) {
			if(user.getUserType()!=0) {
				return "redirect:/errorPage";
			}
		}else {
			return "redirect:/errorPage";
		}
		return "/policy/write";
	}
	@ResponseBody
	@PostMapping("/delPolicy")
	public String delPolicy(PolicyVO vo) {
		service.delBoard(vo);
		return "redirect:/policy/policy";
	}
	
	@PostMapping("/indexsearch")
	public String indexsearch(Criteria cri, RedirectAttributes re) {	
		cri.setAmount(8);
		re.addFlashAttribute("criteria", cri);
		log.info(cri);
		return "redirect:/policy/policy";
	}
	
	
	@PostMapping("/write")
	public String writePolicy(PolicyVO vo) {
		service.wirteBoard(vo);
		return "redirect:/policy/policy";			
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
		log.info(cri);
		cri.setAmount(8);
		int total = service.getTotalAmount(cri); // tbl_board�뀒�씠釉붿쓽 紐⑤뱺 �뻾�쓽 媛��닔
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
	}
	
	@ResponseBody
	@RequestMapping(value = "/getList", method = RequestMethod.POST)
	public List<PolicyVO> getList(Criteria cri){
		return service.getPage(cri);
	}
	
	@RequestMapping(value="/modify", method={RequestMethod.GET, RequestMethod.POST})
	public String modpolicy(PolicyVO vo, Criteria cri , Model model, HttpSession session) {		
		UserVO user = (UserVO) session.getAttribute("user");
		if(user!=null) {
			if(user.getUserType()!=0) {
				return "redirect:/errorPage";
			}
		}else {
			return "redirect:/errorPage";
		}
		model.addAttribute("policy", service.getBoard(vo.getNo()));
		log.info(service.getBoard(vo.getNo()));
		//int total = service.getCommentTotalAmount(vo.getNo());
		cri.setBno(vo.getNo());
		int total = service.getCommentTotalAmount(cri);
		PageDTO pageResult = new PageDTO(cri, total);
		log.info(pageResult.toString());
		model.addAttribute("pageMaker", pageResult);
		return "policy/modify";
	}
	
	@RequestMapping(value="/get", method={RequestMethod.GET, RequestMethod.POST})
	public void getpolicy(PolicyVO vo, Criteria cri , Model model, HttpSession session) {		
		model.addAttribute("policy", service.getBoard(vo.getNo()));
		log.info(service.getBoard(vo.getNo()));
		//int total = service.getCommentTotalAmount(vo.getNo());
		cri.setBno(vo.getNo());
		int total = service.getCommentTotalAmount(cri);
		PageDTO pageResult = new PageDTO(cri, total);
		log.info(pageResult.toString());
		model.addAttribute("pageMaker", pageResult);
	}	
	
	@ResponseBody
	@PostMapping("/toggleWish")
	public void toggleWish(PolicyVO vo) {
		log.info(vo);
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
	// �뙎湲� �궘�젣
	@RequestMapping(value="/deleteComment", method={RequestMethod.GET, RequestMethod.POST})
	public String delCommunityComment(@RequestParam("cno") Integer cno, @RequestParam("bno") Integer bno){
		service.delCommunityComment(cno);
		return "redirect:/policy/get?no=" + bno;
	}
	
	// �뙎湲� �닔�젙
	@ResponseBody
	@RequestMapping(value="/modifyComment", method={RequestMethod.GET, RequestMethod.POST})
	public void modCommunityComment(@RequestParam("bno") Integer bno, PolicyCommentVO comment){
		service.modCommunityComment(comment);
	}
	
	@ResponseBody
	@PostMapping("/reportcomment")
	public int reportcomment(CommentsReportVO vo) {
		int writerUserType = service.checkWriterUserType(vo);
		if(writerUserType == 0) {
			return 0;
		}
		else if(service.reportcomment(vo)) {
			return 1;
		}else {
			return 2;
		}
	}
	
	@ResponseBody
	@PostMapping("/toggleCommentLike")
	public int toggleCommentLike(PolicyCommentVO vo) {
				
		return service.toggleCommentLike(vo).getLike();		
	}
	

@ResponseBody
@RequestMapping(value = "/getImageUrl", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
public String getImageUrl(@RequestParam("bno") int bno) {
    String imageUrl = service.getUrl(bno);
    return imageUrl;
}
	


	
}
