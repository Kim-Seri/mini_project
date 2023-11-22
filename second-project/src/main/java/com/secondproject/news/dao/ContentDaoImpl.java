package com.secondproject.news.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.secondproject.news.domain.News;
import com.secondproject.news.domain.NewsWithPost;
import com.secondproject.news.domain.Post;

@Repository
public class ContentDaoImpl implements ContentDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private static final String NAME_SPACE = "com.secondproject.news.mappers.ContentMapper";
	
	@Override
	public void insertScrap(News news, String writer) {
		
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("newsNo", news.getNo());
		paramMap.put("newsCategory", news.getCategoryId());
		paramMap.put("writer", writer);
		
		sqlSession.insert(NAME_SPACE + ".insertScrap", paramMap);
		
	}

	@Override
	public String isScrapCheck(int newsNo, String userId) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("newNo", newsNo);
		paramMap.put("userId", userId);
		return sqlSession.selectOne(NAME_SPACE + ".isScrapCheck", paramMap);
	}

	@Override
	public List<NewsWithPost> getScrapList(String userId) {
		return sqlSession.selectList(NAME_SPACE + ".getScrapList", userId);
	}


}
