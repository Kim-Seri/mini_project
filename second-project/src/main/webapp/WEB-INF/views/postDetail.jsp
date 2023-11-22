<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row my-5">
<div class="col-10 offset-1">
	
	<div class="row border border-2 border-dark rounded-3 p-5 bg-body-tertiary">
	<div class="col">
		
		<!-- 기사 타이틀 영역 -->
		<div class="row mt-3">
		<div class="col-2 fw-bold">
			제목
		</div>
		<div class="col">
			${n.title}
		</div>
		</div>
		
		<div class="row mt-3">
		<div class="col-2 fw-bold">
			카테고리
		</div>
		<div class="col">
			${n.categoryId}
		</div>
		</div>
		
		<div class="row mt-3">
		<div class="col-2 fw-bold">
			작성자
		</div>
		<div class="col">
			${n.writer}
		</div>
		</div>
		
		<div class="row mt-3">
		<div class="col-2 fw-bold">
			작성일
		</div>
		<div class="col">
			${n.regDate}
		</div>
		</div>
		
		<!-- 기사 내용 본문 영역 -->
		<div class="row mt-5">
		<div class="col-12 fw-bold mb-3">
			내용
		</div>
		<div class="col-12 p-3 mb-2 bg-secondary-subtle rounded-3 ">
		<div class="row my-3">
			<div class="col">
				<img src="resources/upload/${n.image}"  style="width: 400px; height: 400px" class="img-fluid rounded mx-auto d-block">
			</div>
		</div>
		<div class="row ">
			<div class="col" style="line-height: 200%;">
				${n.content}
			</div>
		</div>	
		</div>
		</div>
	
	</div>
	</div>

</div>

<!-- 코멘트 폼 -->
<div class="col-10 offset-1 mt-5">

<form name="postWriteForm" id="postWriteForm" action="postWriteProcess" method="post">
		<input type="hidden" name="postNo" id="postNo" value="${p.postNo}">
		
		<div class="row border border-2 border-dark rounded-3 p-5">
		<div class="col">
		
			<div class="row mt-3">
				<div class="col-10">
					<label for="comment" class="form-label fw-bold">코멘트</label>
				</div>
				<c:if test="${p.comment==null}">
					<div class="col-12">
						<!-- 코멘트 작성 및 저장하기 기능 추가 예정 -->
						<textarea name="comment" id="comment" class="form-control mt-3" rows="10"></textarea>
					</div>
				</c:if>
				<c:if test="${p.comment!=null}">
					<div class="col-12">
						<!-- 코멘트 작성 및 저장하기 기능 추가 예정 -->
						${p.comment}
					</div>
				</c:if>
			</div>
		<c:if test="${p.comment==null}">
			<div class="row">
				<div class="col text-center">
					<input type="submit" class="btn btn-dark mt-5" value="저장하기">	
					<a href="myPage" class="btn btn-dark mt-5">목록가기</a>		
				</div>
			</div>
		</c:if>
		
		<c:if test="${p.comment!=null}">
			<div class="row">
				<div class="col text-center">
					<a href="myPage" class="btn btn-dark mt-5">목록가기</a>	
				</div>
			</div>
		</c:if>
		
		</div>
		</div>
		
</form>

</div>

</div>