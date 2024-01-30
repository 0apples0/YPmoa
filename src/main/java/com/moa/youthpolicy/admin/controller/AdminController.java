package com.moa.youthpolicy.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moa.youthpolicy.admin.domain.AdminVO;
import com.moa.youthpolicy.admin.service.AdminService;
import com.moa.youthpolicy.common.BoardReportVO;
import com.moa.youthpolicy.common.CommentsReportVO;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.user.domain.UserVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Controller
@RequestMapping("/adminmenu/*") // community
@AllArgsConstructor //생성될 때 communityService 주입
@Log4j
public class AdminController {
	
	private final AdminService adminService;
	
	@GetMapping("/adminmenu")
	public void adminmenu() {}	
	
	// 유저 전체 리스트 출력
	@RequestMapping(value="/userget", method= {RequestMethod.GET, RequestMethod.POST})
	public String list(Criteria cri, Model model, HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("user");
		if(user != null) {
			if(user.getUserType()!=0) {
				return "redirect:/errorPage";
			}
		}else {
			return "redirect:/errorPage";
		}
		log.info("contorller : ");
		log.info("type: "+cri.getType());
		log.info("userType: "+cri.getUserType());
		if(cri.getUserType() == null) {
			cri.setUserType(1);
		}
		
		int total = adminService.getTotalAmount(cri); //전체 회원 수 출력
		log.info("totalpage: "+total);		
		PageDTO pageResult = new PageDTO(cri, total);
		log.info("리얼엔드:"+pageResult.getRealEnd());
		log.info("endPage = " + pageResult.getEndPage());
		model.addAttribute("pageMaker", pageResult);
		return "adminmenu/userget";
	}	
	
	@ResponseBody
	@RequestMapping(value="/getUserList", method={RequestMethod.GET, RequestMethod.POST})
	public List<UserVO> getList(Criteria cri, Model model){
		log.info("Ajax 호출"+cri.toString());
		return adminService.getPage(cri);
	}
	
	// 신고 댓글 전체 리스트 출력
	@RequestMapping(value="/reportcommentget", method= {RequestMethod.GET, RequestMethod.POST})
	public String commentList(Criteria cri, Model model, HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("user");
		if(user != null) {
			if(user.getUserType()!=0) {
				return "redirect:/errorPage";
			}
		}else {
			return "redirect:/errorPage";
		}
		
		int total = adminService.getTotalCommentAmount(cri); //전체 신고 댓글 수 출력
		log.info("totalpage: "+total);		
		PageDTO pageResult = new PageDTO(cri, total);
		log.info("endPage = " + pageResult.getEndPage());
		model.addAttribute("pageMaker", pageResult);
		return "adminmenu/reportcommentget";
	}	

	@ResponseBody
	@RequestMapping(value="/getReportCommentList", method={RequestMethod.GET, RequestMethod.POST})
	public List<AdminVO> commentGetList(Criteria cri, Model model){
		log.info("Ajax 호출"+cri.toString());
		return adminService.getCommentPage(cri);
	}
	
	// 신고 게시글 리스트 출력
	@RequestMapping(value="/reportboardget", method= {RequestMethod.GET, RequestMethod.POST})
	public String reportboardlist(Criteria cri, Model model, HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("user");
		if(user != null) {
			if(user.getUserType()!=0) {
				return "redirect:/errorPage";
			}
		}else {
			return "redirect:/errorPage";
		}
		log.info("contorller : ");
		log.info("type: "+cri.getType());
		log.info("type: "+cri.getBoardType());
		
		int total = adminService.getBoardTotalAmount(cri); //전체 게시글 수 출력
		log.info("totalpage: "+total);		
		PageDTO pageResult = new PageDTO(cri, total);
		log.info("리얼엔드:"+pageResult.getRealEnd());
		log.info("endPage = " + pageResult.getEndPage());
		model.addAttribute("pageMaker", pageResult);
		return "adminmenu/reportboardget";
	}	
	
	@ResponseBody
	@RequestMapping(value="/getReportboardList", method={RequestMethod.GET, RequestMethod.POST})
	public List<AdminVO> getreportboardList(Criteria cri, Model model){
		log.info("Ajax 호출"+cri.toString());
		return adminService.getBoardPage(cri);
	}
	
	// 회원 정지
	@ResponseBody
	@RequestMapping(value="/deleteUser", method={RequestMethod.GET, RequestMethod.POST})
	public void deleteMember(UserVO userVO){
		adminService.delMember(userVO);
	}
	
	// 신고 게시글 삭제 처리(isdeleted 값 업데이트, user table의 countReport 값 1증가)
	@ResponseBody
	@RequestMapping(value="/deleteBoard", method={RequestMethod.GET, RequestMethod.POST})
	public void deleteBoard(Criteria cri){
		adminService.delBoard(cri);
	}
	
	// 신고 게시글 처리(ischecked 값 업데이트)
	@ResponseBody
	@RequestMapping(value="/updateBoardReport", method={RequestMethod.GET, RequestMethod.POST})
	public void updateBoardReport(Criteria cri){
		adminService.updateBoardReport(cri);
	}
	
	// 게시글 신고 상세 사유 모달에 담을 데이터 추출
	@ResponseBody
	@RequestMapping(value="/getBoardReportDetail", method={RequestMethod.GET, RequestMethod.POST})
	public List<BoardReportVO> getBoardReportDetail(Criteria cri){
		return adminService.getBoardReportDetail(cri);
	}
	
	// 신고 댓글 삭제 처리(isdeleted 값 업데이트, user table의 countCommentReport 값 1증가)
	@ResponseBody
	@RequestMapping(value="/deleteComment", method={RequestMethod.GET, RequestMethod.POST})
	public void deleteComment(Criteria cri){
		adminService.deleteComment(cri);
	}
	
	// 신고 댓글 처리(ischecked 값 업데이트)
	@ResponseBody
	@RequestMapping(value="/updateCommentReport", method={RequestMethod.GET, RequestMethod.POST})
	public void updateCommentReport(Criteria cri){
		adminService.updateCommentReport(cri);
	}
	
	// 댓글 신고 상세 사유 모달에 담을 데이터 추출
	@ResponseBody
	@RequestMapping(value="/getCommentReportDetail", method={RequestMethod.GET, RequestMethod.POST})
	public List<CommentsReportVO> getCommentReportDetail(Criteria cri){
		return adminService.getCommentReportDetail(cri);
	}
}
