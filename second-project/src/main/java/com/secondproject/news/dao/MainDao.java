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
		
		//뉴스 개수 가져오기
		public abstract int getNewsCount(String type, String keyword);
		
		//뉴스 리스트 가져오기
		public abstract List<News> getNewsAll(int startRow, int num, String type, String keyword);
		
		//카테고리별 뉴스 3 가져오기
		public abstract List<News> getCategoryNews(String id);
		
		// 기사 세부 정보 가져오기
		public abstract News getNewsDetail(int no);
		
		// 기사 세부 정보 수정하기
		public abstract void updateNews(News news);
		
		//기사 삭제하기
		public abstract void deleteNews(int no);

}
