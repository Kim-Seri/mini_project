package com.secondproject.news.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.secondproject.news.dao.ContentDao;
import com.secondproject.news.dao.MainDao;
import com.secondproject.news.domain.News;
import com.secondproject.news.domain.NewsWithPost;
import com.secondproject.news.domain.Post;

@Service
public class ContentServiceImpl implements ContentService {
	
	@Autowired
	private ContentDao contentDao;
	
	@Autowired
	private MainDao mainDao;

	@Override
	public void scrapNews(News news, String writer) {
		contentDao.insertScrap(news, writer);
	}

	@Override
	public boolean isScrapCheck(int newsNo, String userId) {
		Post check = contentDao.isScrapCheck(newsNo, userId);
		boolean result=false;
		
		if(check != null) {
			result=true;
		}
		
		return result;
	}

	@Override
	public List<NewsWithPost> getScrapList(String userId) {
		
		return contentDao.getScrapList(userId);
	}

	@Override
	public Post getScrapNews(int no) {
		
		return contentDao.getScrapNews(no);
	}

	@Override
	public void insertComment(String comment, int postNo) {
		contentDao.insertComment(comment, postNo);
		
	}

}
