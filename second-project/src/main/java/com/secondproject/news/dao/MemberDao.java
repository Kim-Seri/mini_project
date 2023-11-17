package com.secondproject.news.dao;

import com.secondproject.news.domain.Member;

public interface MemberDao {
	
	// 회원가입
	public abstract void signUpMember(Member m);
	
	//회원정보 가져오기
	public abstract Member getMember(String id);

}
