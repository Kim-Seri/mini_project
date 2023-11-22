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
	
	private static final int PAGE_SIZE = 10;
	private static final int PAGE_GROUP = 10;
	
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
	
	@Override
	public Map<String,Object> getNewsAll(int pageNum, String type, String keyword) {
		
		// 현재 페이지에 해당하는 게시 글 리스트 가져오기 위해서 start 계산 start = 0 시작
		int currentPage=pageNum;
		
		//startRow
		int start = (currentPage - 1) * PAGE_SIZE;
		
		//게시글 리스트 계산
		int listCount=mainDao.getNewsCount(type, keyword);
		
		Map<String,Object> NewsMap=new HashMap<>();
		List<News> nListAll =mainDao.getNewsAll(start,PAGE_SIZE,type,keyword);
		
		// 전체 페이지 수 계산 
		int pageCount=listCount/PAGE_SIZE+(listCount%PAGE_SIZE==0 ? 0:1);
		
		int startPage = (currentPage / PAGE_GROUP) * PAGE_GROUP + 1
				- (currentPage % PAGE_GROUP == 0 ? PAGE_GROUP : 0);
		
		int endPage = startPage + PAGE_GROUP - 1;
		
		if(endPage > pageCount) {
			endPage = pageCount;
		}
		
		NewsMap.put("nListAll", nListAll);
		NewsMap.put("pageCount", pageCount);
		NewsMap.put("startPage", startPage);
		NewsMap.put("endPage", endPage);
		NewsMap.put("currentPage", currentPage);
		NewsMap.put("pageGroup", PAGE_GROUP);
		NewsMap.put("listCount", listCount);
		
		boolean searchOption = (type.equals("null") || keyword.equals("null")) ? false : true;
		
		NewsMap.put("searchOption", searchOption);
		if(searchOption) {
			NewsMap.put("type", type);
			NewsMap.put("keyword", keyword);
		}
		
		return NewsMap;
	}


	@Override
	public Map<String, List<News>> getCategoryNews() {
		List<Category> cList=mainDao.getCategory();
		Map<String, List<News>> categoryNewsMap=new HashMap<>();
		
		for(Category c:cList) {
			//categoryNewsMap.put("a"+c.getCategoryNo(), mainDao.getCategoryNews(c.getCategoryId()));
			categoryNewsMap.put("a"+c.getCategoryId(), mainDao.getCategoryNews(c.getCategoryId()));
			//("경제",List) ("문화",List)
		}
		return categoryNewsMap;
	}


	@Override
	public News getNewsDetail(int no) {
		return mainDao.getNewsDetail(no);
	}


	@Override
	public void updateNews(News news) {
		mainDao.updateNews(news);
	}


	@Override
	public void deleteNews(int no) {
		mainDao.deleteNews(no);
		
	}
}
