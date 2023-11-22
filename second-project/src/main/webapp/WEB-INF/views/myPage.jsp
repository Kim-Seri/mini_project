<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">
<div class="col">
	
	<!-- 기본 정보 영역 -->
	<div class="row">
	<div class="col-10 offset-1 border border-2 border-dark rounded-3 mt-5 p-5">
		
		<!-- 기본정보 - 타이틀 -->
		<div class="row">
		<div class="col">
			<h4>기본 정보</h4>
		</div>
		</div>
		
		<!-- 기본정보 - 내용 -->
		<div class="row mt-5">
		<div class="col-2">
			이름
		</div>
		<div class="col-8">
			${sessionScope.member.name} 님의 마이페이지
		</div>
		</div>
		
		<div class="row mt-3">
		<div class="col-2">
			전화번호
		</div>
		<div class="col-8">
			${sessionScope.member.phone}
		</div>
		</div>
		
		<div class="row mt-3">
		<div class="col-2">
			이메일 주소
		</div>
		<div class="col-8">
			${sessionScope.member.email}
		</div>
		</div>
		
		<div class="row mt-3">
		<div class="col-2">
			관심 카테고리
		</div>
		<div class="col-8">
			${sessionScope.member.categoryId}
		</div>
		</div>
		
		
		
		
		
	</div>
	</div>
	
	
	<!-- 스크랩한 뉴스 출력 영역 -->
	<div class="row">
	<div class="col-10 offset-1 border border-2 border-dark rounded-3 mt-5 p-5">
	
		<div class="row">
		<div class="col">
			<h4>스크랩한 뉴스</h4>
		</div>
		</div>

		<div class="row mb-5">
		 <c:forEach var="post" items="${snList}">
		 	<div class="col-3 p-3 border border-1 border-dark rounded-2 m-3">
		 		<a href="postDetail?no=${post.no}&postNo=${post.postNo}" class="btn btn-outline-dark"> ${post.title}</a>
	
				 
				 <p> 카테고리 : ${post.categoryId}</p>
		    </div>
		</c:forEach>
		</div>
		
	
	</div>
	</div>
	
	
</div>
</div>