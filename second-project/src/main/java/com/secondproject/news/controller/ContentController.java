package com.secondproject.news.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContentController {
	
	// 마이페이지 
	@RequestMapping("/myPage")
	public String myPage(Model model) {
		
		model.addAttribute("isMyPage", true);
		return "myPage";
	}
	
	
}
