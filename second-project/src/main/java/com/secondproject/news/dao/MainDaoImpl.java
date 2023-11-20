package com.secondproject.news.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.secondproject.news.domain.Category;
import com.secondproject.news.domain.News;

@Repository
public class MainDaoImpl implements MainDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private static final String NAME_SPACE = "com.secondproject.news.mappers.MainMapper";

	@Override
	public void insertNews(News news) {
		sqlSession.insert(NAME_SPACE + ".insertNews", news);
	}
	
	//카테고리 가져오기
		@Override
		public List<Category> getCategory() {
			return sqlSession.selectList(NAME_SPACE+".getCategory");
		}


		//뉴스가져오기
		@Override
		public List<News> getNews(String id) {
			
			return sqlSession.selectList(NAME_SPACE+".getNews",id);
		}
		
	

}
