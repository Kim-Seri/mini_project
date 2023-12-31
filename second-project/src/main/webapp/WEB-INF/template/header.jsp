
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row" id="header" >
<div class="col py-4">

		<!-- header 영역 - 마이페이지일 때 -->
	
		<!-- 버튼 영역 -->
		<div class="row mb-5">
		<div class="col text-end">
			<!-- 로그인 상태일 때 -->
			<c:if test="${sessionScope.isLogin}">
				<c:if test="${! isMyPage}">
					<a href="logout" class="btn btn-dark me-3">LOGOUT</a>
					<a href="writeForm" class="btn btn-outline-dark me-3">UPLOAD</a>
					<a href="myPage" class="btn btn-outline-dark me-3">MY PAGE</a>
					<a href="main" class="btn btn-outline-dark">HOME</a>
				</c:if>		
				<c:if test="${isMyPage}">
					<a href="logout" class="btn btn-dark me-3">LOGOUT</a>
					<a href="writeForm" class="btn btn-outline-dark me-3">UPLOAD</a>
					<a href="main" class="btn btn-outline-dark">HOME</a>
				</c:if>		
			</c:if>
			
			<c:if test="${!sessionScope.isLogin}">
				<a href="loginForm" class="btn btn-dark me-3">LOGIN</a>
				<a href="signUpForm" class="btn btn-dark me-3">SIGN-UP</a>		
			</c:if>
			
			
		</div>
		<div class="col-1">
		</div>
		</div>
		
		<!-- 텍스트 영역 -->
		<div class="row">
		<div class="col offset-1">
			<div class="row mt-5">		
			<div class="col">
				<h1>${isMyPage ? "마이페이지" : "뉴스 블로그"}</h1>
			</div>
			</div>
			<div class="row mt-5">
			<div class="col">
				<h4>
					관심있는 분야의 뉴스 기사를 확인하고,<br>
					<span style="color:#34558b; font-weight: bold">기사에 대한 나의 생각을 기록해보세요!</span>
				</h4>
			</div>
			</div>
			
		</div>
		
		<div class="col-4" id="img_header">
		</div>
		</div>


</div>
</div>