package com.moa.youthpolicy.suggest.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.suggest.domain.SuggestVO;
import com.moa.youthpolicy.suggest.controller.SuggestController;
import com.moa.youthpolicy.suggest.service.SuggestService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/suggest/*") // suggest
@AllArgsConstructor //생성될 때 suggestService 주입
@Log4j
public class SuggestController {
	private final SuggestService suggestService;
	@RequestMapping(value="/suggest", method=RequestMethod.GET)// 전체 리스트 출력
	public void list(Criteria cri, Model model) {
		log.info("-------controller in list ------");
		log.info(cri);
		
		int total = suggestService.getTotalAmount(cri); //전체 게시물 갯수
		log.info(total);		
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
		log.info("---------------------------------");
		log.info("작성자 누구: "+cri.getWriter());

	}
	
	// 게시글 상세보기
	@GetMapping("/get")
	public void getCommunity(@RequestParam("bno") Integer bno, Model model) {

		model.addAttribute("vo", suggestService.getBoard(bno));
	}
	
	// Ajax가 호출하는 메서드, 반환타입은 json으로 설정하라는 주석
	@ResponseBody
	@RequestMapping(value="/suggest", method=RequestMethod.POST)
	public List<SuggestVO> getList(Criteria cri, Model model){
        List<SuggestVO> suggestList = suggestService.getPage(cri);
       
        for (SuggestVO suggestVO : suggestList) {
            int likeCount = suggestService.getLikeCount(suggestVO.getBno());
            suggestVO.setLike(likeCount);
        }

        return suggestList;
	}
	

}