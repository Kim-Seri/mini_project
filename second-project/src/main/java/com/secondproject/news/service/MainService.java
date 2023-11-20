package com.secondproject.news.service;

import java.util.List;
import java.util.Map;

import com.secondproject.news.domain.News;

public interface MainService {
	
	// 새로운 뉴스 기사 업로드하는 메소드
	public abstract void insertNews(News news);

		//카테고리
		public Map<String,Object> getCategory();
		
		//뉴스
		public Map<String,Object> getNews(String id);

		public List<News> getNewsAll();
		
		//뉴스
		public Map<String,List<News>> getCategoryNews();
		
	
}
