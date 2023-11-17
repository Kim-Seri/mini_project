package com.secondproject.news.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.secondproject.news.dao.MainDao;
import com.secondproject.news.domain.Category;
import com.secondproject.news.domain.News;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	private MainDao mainDao;

	@Override
	public void insertNews(News news) {
		mainDao.insertNews(news);
	}

	
	//카테고리 가져오기
		public Map<String,Object> getCategory(){
			List<Category> cList=mainDao.getCategory(); 
			Map <String,Object> modelMap=new HashMap<>();
			modelMap.put("cList", cList);
			return modelMap;
		}
		
		//카테고리별 뉴스 가져오기
		public Map<String,Object> getNews(String id){
			List<News> nList=mainDao.getNews(id);
			Map<String,Object> modelMap=new HashMap<>();
			modelMap.put("nList", nList);
			return modelMap;
		}
}
