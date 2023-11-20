package com.secondproject.news.controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.secondproject.news.domain.Member;
import com.secondproject.news.domain.News;
import com.secondproject.news.service.MainService;

@Controller
public class mainController {
	
	private final static String DEFAULT_PATH = "/resources/upload/";
	
	@Autowired
	private MainService mainService;
	
	@RequestMapping(value={"/", "/main"})
	public String main(Model model,HttpSession session) {
		
		model.addAllAttributes(mainService.getCategory());
		
		
		// 1. 로그인 여부 확인
		if (session.getAttribute("isLogin") != null && (boolean) session.getAttribute("isLogin")) {
	        Member member = (Member) session.getAttribute("member");

	        // 2. 관심 분야 정보 확인
	        if (member != null && member.getCategoryId() != null) {
	            String userCategoryId = member.getCategoryId();

	            // 3. DAO에서 데이터를 가져오고 Model에 추가
	            model.addAllAttributes(mainService.getCategory());
	            model.addAllAttributes(mainService.getNews(userCategoryId));
	        }
		}
	
		return "main";
	}
	
	@RequestMapping(value="/writeProcess", method=RequestMethod.POST)
	public String insertNews(Model model,HttpServletRequest request, HttpSession session, String writer, @RequestParam(value="selectCategory") String categoryId, String title, String content, @RequestParam(value="file1", required=false) MultipartFile multipartFile) throws Exception, Throwable {
		
		System.out.println("originName : " + multipartFile.getOriginalFilename());
		System.out.println("Name : " + multipartFile.getName());
		
		News news = new News();
		news.setWriter(writer);
		news.setCategoryId(categoryId);
		news.setTitle(title);
		news.setContent(content);
		
		if(! multipartFile.isEmpty()) {
			
			String filePath = request.getServletContext().getRealPath(DEFAULT_PATH);
			UUID uid = UUID.randomUUID();
			String fileName = uid.toString() + "_" + multipartFile.getOriginalFilename();
			File file = new File(filePath,fileName);
			
			multipartFile.transferTo(file);
			news.setImage(fileName);
			
		}
		
		Member member = (Member) session.getAttribute("member");
		
		model.addAttribute("member",member);
		
		mainService.insertNews(news);
		return "redirect:main";
	}
	
	

}
