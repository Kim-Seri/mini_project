package com.secondproject.news.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ContentController {
	
	// 마이페이지 
	@RequestMapping("/myPage")
	public String myPage(Model model) {
		
		model.addAttribute("isMyPage", true);
		return "myPage";
	}
	
	// 포스트 작성하기
	@RequestMapping(value="/postWriteForm", method=RequestMethod.POST)
	public String insertPost(Model model, HttpServletRequest request, HttpSession session) {
		
		return "postWriteForm";
	}
	
}
