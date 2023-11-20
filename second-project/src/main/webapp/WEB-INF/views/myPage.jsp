<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">
<div class="col">
	
	<!-- 마이페이지 헤더 -->
	<div class="row" id="header" >
	<div class="col py-4">
	
			<!-- 버튼 영역 -->
			<div class="row mb-5">
			<div class="col text-end">
				<a href="logout" class="btn btn-dark me-3">LOGOUT</a>
				<a href="writeForm" class="btn btn-outline-dark">UPLOAD</a>
			</div>
			<div class="col-1">
			</div>
			</div>
			
			<!-- 텍스트 영역 -->
			<div class="row">
			<div class="col offset-1">
				<h2>마이페이지</h2>
				<p>
					(내용 수정 필요)
					${sessionScope.member.name} 님의 마이페이지
				</p>
			</div>
			
			<div class="col-4" id="img_header">
			</div>
			</div>

	</div>
	</div>
	
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
		
		<div class="row mt-3">
		<div class="col">
			<input type="button" class="btn btn-dark mt-5" value="정보수정"/>
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
		
		<div class="row">
		<div class="col-3">
			
		</div>
		</div>
	
	</div>
	</div>
	
	
</div>
</div>