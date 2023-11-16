package com.secondproject.news.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.secondproject.news.dao.MemberDao;
import com.secondproject.news.domain.Member;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	// 회원가입 메소드
	@Override
	public void signUpMember(Member m) {
		m.setPass(passwordEncoder.encode(m.getPass()));
		memberDao.signUpMember(m);
	}
	
	//로그인 메서드
	@Override
	public int login(String id, String pass) {
		Member m=memberDao.getMember(id);
		int result=-1;
		
		//회원 정보가 없을 경우
		if(m==null) {
			return result;
		}
		
		//로그인
		if(passwordEncoder.matches(pass, m.getPass())) {
			result=1; //로그인 성공
			
		}else {  //비밀번호가 틀린 경우
			result=0;
		}
		
		return result;
	}

	//회원 정보를 가져오는 메서드
	@Override
	public Member getMember(String id) {
		return memberDao.getMember(id);
	}

}
