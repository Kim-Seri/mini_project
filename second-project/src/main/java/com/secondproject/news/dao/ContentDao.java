package com.secondproject.news.dao;

import java.util.List;

import com.secondproject.news.domain.News;
import com.secondproject.news.domain.NewsWithPost;
import com.secondproject.news.domain.Post;

public interface ContentDao {
	
	// 뉴스 스크랩
	public abstract void insertScrap(News news, String writer);
	
	// 스크랩 여부 확인
	public abstract String isScrapCheck(int newsNo, String userId);
	
	// 스크랩 리스트 출력
	public abstract List<NewsWithPost> getScrapList(String userId);

}
