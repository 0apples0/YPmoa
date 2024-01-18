package com.moa.youthpolicy.community.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.moa.youthpolicy.common.Criteria;
import com.moa.youthpolicy.common.PageDTO;
import com.moa.youthpolicy.community.domain.CommunityCommentVO;
import com.moa.youthpolicy.community.domain.CommunityVO;
import com.moa.youthpolicy.community.service.CommunityService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/community/*") // community
@AllArgsConstructor //생성될 때 communityService 주입
@Log4j
public class CommunityController {
	private final CommunityService communityService;
	
	
	@RequestMapping(value="/community", method= {RequestMethod.GET, RequestMethod.POST})// 전체 리스트 출력
	//@GetMapping("/community") 
	public void list(Criteria cri, Model model) {
		log.info("contorller : "+ cri.getWriter());
		log.info("키워드 로그: "+cri.getKeyword());
		
		int total = communityService.getTotalAmount(cri); //전체 게시물 갯수
		log.info("totalpage: "+total);		
		PageDTO pageResult = new PageDTO(cri, total);
		log.info("endPage = " + pageResult.getEndPage());
		model.addAttribute("pageMaker", pageResult);

		log.info("-------controller out list ------");
		log.info("작성자 누구: "+cri.getWriter());

	}
	
	//게시글 자세히 보기 시, 댓글 리스트도 함께 출력
	@RequestMapping(value="/get", method={RequestMethod.GET, RequestMethod.POST})
	public void getCommunity(@RequestParam("bno") Integer bno, Criteria cri, Model model) {
		
		model.addAttribute("vo", communityService.getBoard(bno));
		int total = communityService.getCommentTotalAmount(bno); //전체 댓글 갯수
		PageDTO pageResult = new PageDTO(cri, total);
		model.addAttribute("pageMaker", pageResult);
		log.info("댓글 갯수 제발 잘 가져와줘: "+total);
	}
	
	//글 작성 페이지로 이동
	@GetMapping("/write")
	public void getWrite() {}

	
	
	//private String realPath = "C:\summernote_image";
	/*
	@RequestMapping(value="/uploadSummernoteImageFile", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
		JsonObject jsonObject = new JsonObject();
		log.info("파일업로드 ajax 호출은 되었어요");
        
		String contextRoot = realPath + "/upload_image/image/fileupload/29/";
		String fileRoot = contextRoot;
		//String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.
		
		
		// 내부경로로 저장
		//String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		//String fileRoot = contextRoot+"resources/fileupload_community/";
		//log.info("컨텍스트 루트에요"+contextRoot);
		//String root = request.getSession().getServletContext().getRealPath("resources");
		//log.info("파일 루트에요"+root);
		log.info("파일 루트에요"+fileRoot);
		String originalFileName = multipartFile.getOriginalFilename();	//오리지널 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		log.info("파일업로드 파일이름이에요"+savedFileName);
		File targetFile = new File(fileRoot + savedFileName);	
		log.info("파일업로드 타겟파일이에요"+targetFile.toString());
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url", "/upload_image/image/fileupload/29/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		return a;
	}	


	@Configuration
	public class servletConfig implements WebMvcConfigurer {

	    @Bean
	    public ViewResolver viewResolver(){
	        // VIEW 지정
	        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
	        // 접두사(ex./WEB-INF/views/main.jsp)
	        resolver.setPrefix("/WEB-INF/View/");
	        // 접미사
	    
	        resolver.setSuffix(".jsp");
	        
	        return resolver;
	    }

	    // 주소창 입력값
	    private String connectPath = "/upload_image/**";

	    // 업로드 파일  위치
	    private String resourcePath = "file:///tomcat/webapps/upload_image/";

	    @Override
	    public void addResourceHandlers(ResourceHandlerRegistry registry) {
	        
	        // 업로드 이미지 정적 리소스 설정
	        registry.addResourceHandler(connectPath).addResourceLocations(resourcePath);

	        // 기본 정적 파일 설정
	        registry.addResourceHandler("resources/**").addResourceLocations("classpath:/static/");
	    }

	    
	}	*/
	// Ajax가 호출하는 메서드, 반환타입은 json으로 설정하라는 주석
	@ResponseBody
	@RequestMapping(value="/getList", method=RequestMethod.POST)
	public List<CommunityVO> getList(Criteria cri, Model model){
		log.info("Ajax 호출"+cri.toString());

		return communityService.getPage(cri);
	}
	
	// Ajax가 호출하는 메서드, 반환타입은 json으로 설정하라는 주석
	@ResponseBody
	@RequestMapping(value="/getCommentList", method=RequestMethod.POST)
	public List<CommunityCommentVO> getCommentList(Criteria cri, Model model){
		log.info(cri.toString());
		log.info("댓글 Ajax 호출 + bno"+ cri.getBno());
		return communityService.getCommentPage(cri);
	
	}
	
	// Ajax가 호출하는 메서드, 반환타입은 json으로 설정하라는 주석
	@ResponseBody
	@RequestMapping(value="/getBestCommentList", method=RequestMethod.POST)
	public List<CommunityCommentVO> getBestCommentList(Criteria cri, Model model){
		log.info(cri.toString());
		log.info("댓글 Ajax 호출 + bno"+ cri.getBno());
		return communityService.getBestCommentPage(cri);
	
	}
}
