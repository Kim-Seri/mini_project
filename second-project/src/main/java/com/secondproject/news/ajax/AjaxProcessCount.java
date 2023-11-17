package com.secondproject.news.ajax;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.secondproject.news.service.MemberService;

@Controller
public class AjaxProcessCount {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/ConfirmId")
	@ResponseBody
	public Map<String, Boolean> overIdCheck(String id){
		
		boolean result=memberService.overIdCheck(id);
		Map<String,Boolean> map=new HashMap<>();
		map.put("result", result);
		return map;
	}
	
}

