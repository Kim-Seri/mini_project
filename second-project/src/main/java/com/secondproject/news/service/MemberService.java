package com.secondproject.news.service;

import com.secondproject.news.domain.Member;

public interface MemberService {
	
	// 회원가입 메소드
	public abstract void signUpMember(Member m);
	
	//로그인 메소드
	public  abstract int login(String id,String pass);
	
	//회원정보를 가져오는 메서드
	public abstract Member getMember(String id);

	public abstract boolean  overIdCheck(String id);

}
