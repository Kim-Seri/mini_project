package com.secondproject.news.dao;

import com.secondproject.news.domain.Member;

public interface MemberDao {
	
	// 회원가입
	public abstract void signUpMember(Member m);
	
	//로그인
	public abstract Member getMember(String id);

}
