package com.secondproject.news.dao;

import java.util.List;

import com.secondproject.news.domain.Member;
import com.secondproject.news.domain.News;

public interface MemberDao {
	
	// 회원가입
	public abstract void signUpMember(Member m);
	
	//회원정보 가져오기
	public abstract Member getMember(String id);

	

}
