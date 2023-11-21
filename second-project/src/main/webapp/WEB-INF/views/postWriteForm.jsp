<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row my-5">
<div class="col-10 offset-1">
	
	<div class="row border border-2 border-dark rounded-3 p-5 bg-body-tertiary">
	<div class="col">
		
		<!-- 기사 타이틀 영역 -->
		<div class="row mt-3">
		<div class="col fw-bold">
			타이틀
		</div>
		<div class="col">
			${news.title}
		</div>
		</div>
		
		<div class="row mt-3">
		<div class="col fw-bold">
			카테고리
		</div>
		<div class="col">
			${news.categoryId}
		</div>
		</div>
		
		<div class="row mt-3">
		<div class="col fw-bold">
			작성자
		</div>
		<div class="col">
			${news.writer}
		</div>
		</div>
		
		<div class="row mt-3">
		<div class="col fw-bold">
			작성일
		</div>
		<div class="col">
			${news.regDate}
		</div>
		</div>
		
		<!-- 기사 내용 본문 영역 -->
		<div class="row mt-5">
		<div class="col-12 fw-bold mb-3">
			내용
		</div>
		<div class="col-12 p-3 mb-2 bg-secondary-subtle rounded-3">
			${news.content}
		</div>
		</div>
	
	</div>
	</div>

</div>

<!-- 코멘트 폼 -->
<div class="col-10 offset-1 mt-5">

	<form name="postWriteForm" id="postWriteForm" action="postWriteProcess" method="post">
		<div class="row border border-2 border-dark rounded-3 p-5">
		<div class="col">
		
			<div class="row mt-3">
			<div class="col-10">
				<label for="comment" class="form-label fw-bold">코멘트</label>
			</div>
			<div class="col-12">
				<textarea name="comment" id="comment" class="form-control mt-3" rows="10"></textarea>
			</div>
			</div>
		
		<div class="row">
		<div class="col text-center">
			<input type="submit" class="btn btn-dark mt-5" value="저장하기">		
		</div>
		</div>
		
		</div>
		</div>
		
		
	</form>

</div>

</div>