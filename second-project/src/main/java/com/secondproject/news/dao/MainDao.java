package com.secondproject.news.dao;

import java.util.List;

import com.secondproject.news.domain.Category;
import com.secondproject.news.domain.News;

public interface MainDao {
	
	public abstract void insertNews(News news);
	
	//뉴스 카테고리 가져오기
		public abstract List<Category> getCategory();
		
		//카테고리별 뉴스 가져오기
		public abstract List<News> getNews(String id);
		
		
		public abstract List<News> getNewsAll();
		
		//카테고리별 뉴스 3 가져오기
			public abstract List<News> getCategoryNews(String id);

}
