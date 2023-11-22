package com.secondproject.news.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.secondproject.news.domain.Member;
import com.secondproject.news.service.MemberService;

@Controller
public class memberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String signUpForm(Model model, Member m, String name, @RequestParam("userId") String id, String pass,
			String phone1, String phone2, String phone3, String emailId, String emailDomain,
			@RequestParam("interest") String categoryId) {

		m.setName(name);
		m.setId(id);
		m.setPass(pass);

		if (phone2.equals("") || phone3.equals("")) {
			m.setPhone("");
		} else {
			m.setPhone(phone1 + "-" + phone2 + "-" + phone3);
		}

		if (emailId.equals("")) {
			m.setEmail("");
		} else {
			m.setEmail(emailId + "@" + emailDomain);
		}

		// 관심분야 버튼 선택 여부 추가
		m.setCategoryId(categoryId);
		System.out.println(categoryId);

		memberService.signUpMember(m);
		model.addAttribute("member", m);

		// 추후에 회원가입 환영 페이지로 이동하는 것으로 변경하기
		return "redirect:loginForm";
	}

	// 로그아웃
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:main";
	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Model model, @RequestParam("userId") String id, String pass, HttpSession session,
			HttpServletResponse response, PrintWriter out) {

		int result = memberService.login(id, pass);
		if (result == -1) {
			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("	alert('회원 아이디가 존재하지 않습니다.');");
			out.println("	location.href='loginForm'");
			out.println("</script>");
			return null;

		} else if (result == 0) { // 비밀번호가 틀린 경우
			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("	alert('비밀번호가 틀립니다.');");
			out.println("	history.back();");
			out.println("</script>");
			return null;
		}

		Member member = memberService.getMember(id);

		session.setAttribute("isLogin", true);
		session.setAttribute("member", member);
		session.setAttribute("name", member.getName());

		return "redirect:main";
	}

}
