package com.secondproject.news.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.secondproject.news.domain.Member;

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
	
	// 로그인
	@Override
	public Member getMember(String id) {
		return sqlSession.selectOne(NAME_SPACE+".getMember",id);
	}

}
