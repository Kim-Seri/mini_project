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
		String check = contentDao.isScrapCheck(newsNo, userId);
		
		return check != null;
	}

	@Override
	public List<NewsWithPost> getScrapList(String userId) {
		
		return contentDao.getScrapList(userId);
	}

}
