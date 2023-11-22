package com.secondproject.news.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.secondproject.news.domain.Member;
import com.secondproject.news.domain.News;
import com.secondproject.news.domain.NewsWithPost;
import com.secondproject.news.domain.Post;
import com.secondproject.news.service.ContentService;
import com.secondproject.news.service.MainService;

@Controller
public class ContentController {
	
	// 마이페이지 
	@RequestMapping("/myPage")
	public String myPage(Model model, HttpSession session) {
		model.addAttribute("isMyPage", true);
		
		Member member = (Member) session.getAttribute("member");
		
		if(member != null) {
			String userId = member.getId();
			
			List<NewsWithPost> snList = contentService.getScrapList(userId);
			
			model.addAttribute("snList",snList);
			
			return "myPage";
		} else {
			
			return "redirect:loginForm";
		}
	}
	
	
	// 포스트 코멘트 작성
	@RequestMapping(value="/postWriteProcess" ,method=RequestMethod.POST)
	public String insertComment(String comment ,int postNo) {
		
		contentService.insertComment(comment, postNo);
		return "myPage";
	}
	
	// 포스트 조회
	@RequestMapping(value="/postDetail")
	public String insertPost(Model model, HttpServletRequest request,  int no, int postNo) {
		
		Post p=contentService.getScrapNews(postNo);
		News n =mainService.getNewsDetail(no);
		
		System.out.println(postNo);
		System.out.println(p.getUserId());
		System.out.println(p.getPostNo());
		System.out.println(p.getNewsNo());
		System.out.println(p.getCategoryId());
		
		model.addAttribute("n", n);
		model.addAttribute("p", p);
		
		return "postDetail";
	}
	
	@Autowired
	private ContentService contentService;
	
	@Autowired
	private MainService mainService;
	
	// 뉴스 스크랩
	@RequestMapping(value="/scrapNews", method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Integer> scrapNews(News news, HttpSession session) {
		
		Member m = (Member) session.getAttribute("member");
		int newsNo = news.getNo();
		String userId = m.getId();
		
		System.out.println(newsNo);
		System.out.println(userId);
		
		Map<String,Integer> map =new HashMap<>();
		boolean isScrap = contentService.isScrapCheck(newsNo, userId);
		System.out.println(isScrap);
		 
		 
		if(m != null && ! isScrap) { // 로그인이 되어있고, 스크랩된 것이 없을 때 - 스크랩하기 
			contentService.scrapNews(news, m.getId());
			map.put("result",0);
		}  else if(m != null && isScrap) { // 로그인이 되어있고, 스크랩된 것이 있을 때
			map.put("result", 1);
		}  else { // 로그인이 안되어있을 때
			map.put("result",2);
		}
		return map;
	}
	
}
