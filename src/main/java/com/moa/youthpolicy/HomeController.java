package com.moa.youthpolicy;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.moa.youthpolicy.common.FileUtil;
import com.moa.youthpolicy.login.naver.NaverAuthResponse;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private ServletContext application;
	
	@Autowired
	private HttpServletRequest request;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
				
		return "/index";
	}
	
	@GetMapping("/index")
	public String callBack(RedirectAttributes redirect, NaverAuthResponse response) {
	    redirect.addFlashAttribute("NaverAuth", response);
	    return "redirect:user/n_login";
	}
	
	@ResponseBody
	@RequestMapping("/uploadImge")
	public Map<String, String> upload(MultipartHttpServletRequest mhsr) {
		String imgname = "";
		
		Iterator<String> itr = mhsr.getFileNames();
		
		if(itr.hasNext()) {
			try { //just temporary save file info into ufile 
				MultipartFile mf = mhsr.getFile(itr.next());

				//파일이 첨부되었는지를 판단!
				if(mf.getSize() > 0 && mf.getOriginalFilename().trim().length() > 0) {
					//파일 첨부를 했을 경우에만 수행하는 곳!!
					
					//첨부파일이 저장될 위치를 절대경로화 시킨다.
					String path = application.getRealPath("/resources/save_img");
					System.out.println("첨부파일 저장경로="+path);
					
					//첨부된 파일명을 얻어낸다
					String f_name = mf.getOriginalFilename();
					
					//같은 이름의 파일이 있는지 검사한다.
					f_name = FileUtil.checkSameFileName(f_name, path);
					System.out.println("저장될 파일명"+f_name);
					
					//파일저장!!
					mf.transferTo(new File(path,f_name));
					
					//DB에 저장할 객체에 파일명을 저장
					//vo.setN_image(f_name);
					imgname =f_name;
				}
				else {
					//파일 첨부를 하지 않은 경우 수행
					//vo.setN_image("");
				}
				
				request.setAttribute("f_name", imgname);
				
				} catch (Exception e){ 
					System.out.println(e.getMessage());
					e.printStackTrace(); 
				} 
		}
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("url", "http://localhost:8090"+application.getContextPath()+"/resources/save_img/"+imgname);
		
		return map;
	}
	
}