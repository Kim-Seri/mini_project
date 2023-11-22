package com.secondproject.news.dao;

import java.util.List;

import com.secondproject.news.domain.News;
import com.secondproject.news.domain.NewsWithPost;
import com.secondproject.news.domain.Post;

public interface ContentDao {
	
	// 뉴스 스크랩
	public abstract void insertScrap(News news, String writer);
	
	// 스크랩 여부 확인
	public abstract Post isScrapCheck(int newsNo, String userId);
	
	// 스크랩 리스트 출력
	public abstract List<NewsWithPost> getScrapList(String userId);
	
	//스크랩뉴스 가져오기
	public abstract Post getScrapNews(int no);
	
	//스크랩 뉴스 코멘트 작성
	public abstract void insertComment(String comment,int postNo);

}
