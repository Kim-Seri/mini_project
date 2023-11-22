package com.secondproject.news.service;

import java.util.List;
import java.util.Map;

import com.secondproject.news.domain.News;
import com.secondproject.news.domain.NewsWithPost;
import com.secondproject.news.domain.Post;

public interface ContentService {
	
	// 뉴스 스크랩
	public abstract void scrapNews(News news, String writer);
	
	// 스크랩 여부 확인
	public boolean isScrapCheck(int newsNo, String userId);
	
	// 스크랩 리스트 출력
	public List<NewsWithPost> getScrapList(String userId);
	
	//스크랩 정보 가져오기
	public Post getScrapNews(int no);
	
	//코멘트 넣기
	public void insertComment(String comment,int postNo);

}
