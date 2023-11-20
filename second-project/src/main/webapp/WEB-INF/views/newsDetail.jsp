<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>

<div class="row my-5">
<div class="col-10 offset-1">
	
	<div class="row border border-2 border-dark rounded-3 p-5">
	<div class="col">
		
		<!-- 기사 타이틀 영역 -->
		<div class="row">
		<div class="col">
			<h4 class="fw-bold">뉴스 기사 타이틀</h4>
		</div>
		</div>
		
		<div class="row mt-3">
		<div class="col-1 fw-bold">
			카테고리
		</div>
		<div class="col">
			카테고리 이름
		</div>
		</div>
		
		<div class="row mt-3">
		<div class="col-1 fw-bold">
			작성자
		</div>
		<div class="col">
			작성자 이름
		</div>
		</div>
		
		<div class="row mt-3">
		<div class="col-1 fw-bold">
			작성일
		</div>
		<div class="col">
			작성일
		</div>
		</div>
		
		<!-- 좋아요, 조회수 출력 -->
		<div class="row mt-3">
			<div class="col-1 fw-bold">
				좋아요
			</div>
			<div class="col-5">
			 	좋아요 수 출력
			</div>
			<div class="col-1 fw-bold">
				조회수
			</div>
			<div class="col-2">
			 	조회수 출력
			</div>
		</div>
		
		<!-- 기사 내용 본문 영역 -->
		<div class="row mt-5">
		<div class="col p-3 mb-2 bg-body-tertiary rounded-3">
			내용 본문
		</div>
		</div>
	
	</div>
	</div>

</div>
</div>
