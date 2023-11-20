package com.secondproject.news.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContentController {
	
	// 마이페이지 
	@RequestMapping("/myPage")
	public String myPage() {
		
		return "myPage";
	}
	
	
}
