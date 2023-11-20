package com.secondproject.news.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.secondproject.news.domain.Member;
import com.secondproject.news.domain.News;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	private static final String NAME_SPACE = "com.secondproject.news.mappers.MemberMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	// 회원가입
	@Override
	public void signUpMember(Member m) {
		sqlSession.insert(NAME_SPACE + ".signUpMember", m);	
	}
	
	// 회원정보 가져오기
	@Override
	public Member getMember(String id) {
		return sqlSession.selectOne(NAME_SPACE+".getMember",id);
	}
	


}
