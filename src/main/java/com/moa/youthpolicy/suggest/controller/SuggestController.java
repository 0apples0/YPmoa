package com.moa.youthpolicy.suggest.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.suggest.domain.SuggestVO;
import com.moa.youthpolicy.suggest.controller.SuggestController;
import com.moa.youthpolicy.suggest.service.SuggestService;
import com.moa.youthpolicy.user.domain.UserVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/suggest/*") // suggest
@AllArgsConstructor //생성될 때 suggestService 주입
@Log4j

public class SuggestController {
	
	private final SuggestService suggestService;

	// 전체 리스트 출력
	@RequestMapping(value="/suggest", method= {RequestMethod.GET, RequestMethod.POST})
	public void list(Criteria cri, Model model) {
		log.info("contorller : "+ cri.getWriter());
		log.info("키워드 로그: "+cri.getKeyword());
		
		int total = suggestService.getTotalAmount(cri); //전체 게시물 갯수
		log.info(total);		
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
		log.info("작성자 누구: "+cri.getWriter());
	}
	
	// 게시글 상세보기 
	// @GetMapping("/get")
	@GetMapping({"/get","/modify"})
	public void getCommunity(@RequestParam("bno") Integer bno, Model model) {
		model.addAttribute("vo", suggestService.getBoard(bno));
	}
	//글 작성
	@GetMapping("/write")
	public void getWrite() {}
	
	@PostMapping("/write") 
		public String write(SuggestVO suggestVO, RedirectAttributes rttr, HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("user");
		
		if(user == null) {
			return "redirect:/user/login";
		}
		
	    suggestVO.setWriter(user.getNick());
		
		suggestService.write(suggestVO);
		rttr.addFlashAttribute("result", "success");
		return "redirect:/suggest/suggest";
	}
	
	//글 수정
	@PostMapping("/modify")
    public String modifyPage(@RequestParam("bno") Integer bno,
							 @RequestParam("category") String category,
							 @RequestParam("title") String title,
							 @RequestParam("content") String content,
							 @RequestParam("region") String region,
							 RedirectAttributes rttr) {
		SuggestVO vo = suggestService.getBoard(bno);
		vo.setCategory(category);
		vo.setTitle(title);
		vo.setContent(content);
		vo.setRegion(region);
		
		if (suggestService.modifyBoard(vo)) {
		rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/suggest/get?bno=" + bno;
	}
	
	//글 삭제
	@PostMapping("/remove")
	public String removePage(@RequestParam("bno") Integer bno, RedirectAttributes rttr) {
	    if (suggestService.removeBoard(bno)) {
	        rttr.addFlashAttribute("result", "success");
	    }

	    return "redirect:/suggest/suggest";
	}
	
	
	// Ajax가 호출하는 메서드, 반환타입은 json으로 설정하라는 주석
	@ResponseBody
	@RequestMapping(value="/getList", method=RequestMethod.POST)
	public List<SuggestVO> getList(Criteria cri, Model model){
		log.info("Ajax 호출"+cri.toString());	
		log.info("Ajax 호출"+model);	
		return suggestService.getPage(cri);
		
		
	}

	// 글 좋아요
	@PostMapping("/toggleLike")
	@ResponseBody
	public int toggleLike(@RequestParam("bno") int bno, HttpSession session) {
	    UserVO user = (UserVO) session.getAttribute("user");

	    if (user == null) {
	        return -1; // 로그인되지 않은 경우 -1 반환
	    }

	    SuggestVO suggestVO = new SuggestVO();
	    suggestVO.setBno(bno);

	    suggestService.toggleLike(suggestVO);

	    // 좋아요 여부를 반환
	    return suggestService.checkUserLike(bno, user.getEmail());
	}
	// 좋아요 확인
    @GetMapping("/checkUserLike")
    public int checkUserLike(@RequestParam("bno") int bno, HttpSession session) {
        UserVO user = (UserVO) session.getAttribute("user");

        if (user == null) {
            // 사용자가 로그인하지 않았을 경우, 좋아요하지 않았음을 나타내는 값 반환 (예: -1)
            return -1;
        }

        String userEmail = user.getEmail();
        return suggestService.checkUserLike(bno, userEmail);
    }

}