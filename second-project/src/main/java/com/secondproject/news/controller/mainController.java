package com.secondproject.news.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

	@RequestMapping(value = "/NewsList")
	public String NewsList(Model model,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
			@RequestParam(value = "type", required = false, defaultValue = "null") String type,
			@RequestParam(value = "keyword", required = false, defaultValue = "null") String keyword) {

		model.addAllAttributes(mainService.getNewsAll(pageNum, type, keyword));

		return "NewsList";
	}

	@RequestMapping(value = { "/", "/main" })
	public String main(Model model, HttpSession session) {

		model.addAllAttributes(mainService.getCategory());
		model.addAttribute("newsMap", mainService.getCategoryNews());

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

	@RequestMapping(value = "/writeProcess", method = RequestMethod.POST)
	public String insertNews(Model model, HttpServletRequest request, HttpSession session,
			String writer, @RequestParam(value = "selectCategory") String categoryId, String title, String content,
			@RequestParam(value = "file1", required = false) MultipartFile multipartFile) throws Exception, Throwable {

		// System.out.println("originName : " + multipartFile.getOriginalFilename());
		// System.out.println("Name : " + multipartFile.getName());

		News news = new News();
		news.setWriter(writer);
		news.setCategoryId(categoryId);
		news.setTitle(title);
		news.setContent(content);

		if (!multipartFile.isEmpty()) {

			String filePath = request.getServletContext().getRealPath(DEFAULT_PATH);
			UUID uid = UUID.randomUUID();
			String fileName = uid.toString() + "_" + multipartFile.getOriginalFilename();
			File file = new File(filePath, fileName);
			System.out.println(fileName);
			System.out.println(filePath);

			multipartFile.transferTo(file);
			news.setImage(fileName);

		}

		Member member = (Member) session.getAttribute("member");

		model.addAttribute("member", member);

		mainService.insertNews(news);
		return "redirect:main";
	}

	// 기사 디테일 페이지
	@RequestMapping("/newsDetail")
	public String newsDetail(Model model, @RequestParam("news_no") int no,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
			@RequestParam(value = "type", required = false, defaultValue = "null") String type,
			@RequestParam(value = "keyword", required = false, defaultValue = "null") String keyword) {

		News n = mainService.getNewsDetail(no);

		boolean searchOption = (type.equals("null") || keyword.equals("null")) ? false : true;

		model.addAttribute("news", n);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("searchOption", searchOption);
		if (searchOption) {
			model.addAttribute("type", type);
			model.addAttribute("keyword", keyword);
		}

		return "newsDetail";
	}

	// 기사 수정하기
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String updateNews(Model model, PrintWriter out, HttpServletResponse response, int no) {

		News n = mainService.getNewsDetail(no);
		model.addAttribute("news", n);
		return "updateForm";
	}

	@RequestMapping(value = "/updateProcess", method = RequestMethod.POST)
	public String updateNews1(int no, String writer, @RequestParam(value = "selectCategory") String categoryId,
			String title, String content,
			@RequestParam(value = "file1", required = false) MultipartFile multipartFile, HttpServletRequest request)
			throws IllegalStateException, IOException {

		News news = new News();
		news.setNo(no);
		news.setWriter(writer);
		news.setCategoryId(categoryId);
		news.setTitle(title);
		news.setContent(content);

		if (!multipartFile.isEmpty()) {

			String filePath = request.getServletContext().getRealPath(DEFAULT_PATH);
			UUID uid = UUID.randomUUID();
			String fileName = uid.toString() + "_" + multipartFile.getOriginalFilename();
			File file = new File(filePath, fileName);
			System.out.println(fileName);
			System.out.println(filePath);

			multipartFile.transferTo(file);
			news.setImage(fileName);

		}

		mainService.updateNews(news);
		System.out.println(news.getCategoryId());
		System.out.println(news.getContent());
		System.out.println(news.getTitle());
		System.out.println(news.getWriter());
		return "redirect:main";
	}

	@RequestMapping(value = "/delete")
	public String deleteNews(int no) {
		mainService.deleteNews(no);
		return "redirect:main";
	}

}
