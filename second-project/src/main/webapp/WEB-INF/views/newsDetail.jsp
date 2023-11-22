<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>

<div class="row my-5">
<div class="col-10 offset-1">

	<form name="checkForm" id="checkForm">
				<input type="hidden" name="no" id="no" value="${news.no}">
				<input type="hidden" name="categoryId" id="categoryId" value="${news.categoryId}">
				<c:if test="${ searchOption }">
					<input type="hidden" name="type" value="${ type }" />
					<input type="hidden" name="keyword" value="${ keyword }" />
				</c:if>	
	</form>
	
	<div class="row border border-2 border-dark rounded-3 p-5">
	<div class="col">
		
		<!-- 기사 타이틀 영역 -->
		<div class="row">
			<div class="col">
				<h4 class="fw-bold">${news.title}</h4>
			</div>
		</div>
		
		<div class="row mt-3">
			<div class="col-1 fw-bold">
				카테고리
			</div>
			<div class="col">
				${news.categoryId}
			</div>
		</div>
		
		<div class="row mt-3">
			<div class="col-1 fw-bold">
				작성자
			</div>
			<div class="col">
				${news.writer}
			</div>
		</div>
		
		<div class="row mt-3">
			<div class="col-1 fw-bold">
				작성일
			</div>
			<div class="col">
				${news.regDate}
			</div>
		</div>
		
		<!-- 좋아요, 조회수 출력 (시간 남으면!) -->
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
			<div class="row my-3">
				<div class="col">
					<img alt="" src="resources/upload/${news.image}" style="width: 400px; height: 400px" class="img-fluid rounded mx-auto d-block">
				</div>
			</div>
			<div class="row my-3">
				<div class="col p-3 mb-2 bg-body-tertiary rounded-3" style="line-height: 250%;">
					${news.content}
				</div>
			</div>
		</div>
		
		<div class="row mt-5">
		<div class="col text-center">
			
			<input type="button" class="btn btn-dark me-2" id="detailScrap" value="스크랩하기"/>
			<c:if test="${sessionScope.member.name==news.writer}">
				<input type="button" class="btn btn-outline-success me-2" id="detailModify" value="수정하기"/>
				<input type="button" class="btn btn-outline-danger" id="detailDelete" value="삭제하기"/>
			</c:if>
			<c:if test="${ not searchOption }">	
				&nbsp;&nbsp;<input class="btn btn-primary" type="button" value="목록보기" 
						onclick="location.href='NewsList?pageNum=${pageNum}'"/>
			</c:if>
				
			<c:if test="${searchOption }">	
				&nbsp;&nbsp;<input class="btn btn-primary" type="button" value="목록보기" 
						onclick="location.href='NewsList?pageNum=${pageNum}&type=${type }&keyword=${ keyword }'"/>
			</c:if>	
			
			
		</div>
		</div>
	
	</div>
	</div>

</div>
</div>
