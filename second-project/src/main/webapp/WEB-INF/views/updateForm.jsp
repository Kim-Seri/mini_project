<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<%@ page import="com.secondproject.news.domain.Member, com.secondproject.news.service.MemberService" %>

<div class="row my-5">
<div class="col-10 offset-1">
	
	<div class="row">
	<div class="col-10 offset-1">
	
			<!-- 안내사항 영역 -->
			<div class="row border border-2 border-dark rounded-3 p-5">
			<div class="col">
				<h4>안내 사항</h4>
				<p class="mt-5">
					뉴스 기사 내용은 사실에 근거하여 정확하고 명료하게 작성해야합니다.<br>
					시작부터 끝까지 독자의 이해를 돕기 위해 내용을 체계적으로 구성해야합니다.
				</p>
			</div>
			</div>
			
			
			<!-- 기사 작성 영역 - 폼 열기 -->	
			<form name="updateForm" id="updateForm" action="updateProcess" method="post" enctype="multipart/form-data">
				
				<input type="hidden" name="no" value="${news.no}">
			
				<div class="row border border-2 border-dark rounded-3 p-5 mt-5">
				<div class="col">
					
					<div class="row">
					<div class="col">
						<h4>기사 수정</h4>
					</div>
					</div>
					
					<div class="row">
						<div class="col-6 mt-5">
							<label for="writer" class="form-label fw-bold">작성자</label>
					 		<input type="text" class="form-control" name="writer" id="writer" value="${sessionScope.member.name}" readonly>
						</div>
						
						<div class="col-6 mt-5">
							<label for="regDate" class="form-label fw-bold">작성일</label>
					 		<input type="text" class="form-control" name="regDate" id="regDate" value="<%= new SimpleDateFormat("yyyy-MM-dd").format(new Date()) %>" readonly>
						</div>
						
						<div class="col-12 mt-3">
							<label for="selectCategory" class="form-label fw-bold">카테고리</label>
							<select class="form-select" name="selectCategory" id="selectCategory">
								<option>경제</option>
								<option>정치</option>
								<option>사회</option>
								<option>문화</option>
								<option>기술</option>
								<option>연예</option>
							</select>
						</div>
						
						<div class="col-12 mt-3">
							<label for="title" class="form-label fw-bold">제목</label>
					 		<input type="text" class="form-control" name="title" id="title" value="${news.title}">
						</div>
						
						<div class="col-12 mt-3">
							<label for="content" class="form-label fw-bold">내용</label>
					 		<textarea name="content" id="content" class="form-control" rows="10">${news.content}</textarea>
						</div>
						
						<div class="col-12 mt-3">
							<label for="file1" class="form-label fw-bold">이미지</label>
					 		<input type="file" class="form-control" name="file1" id="file1">
						</div>
					</div>
				
				</div>
				</div>
				
				<!-- 뉴스 기사 관련 규정 -->
				<div class="row border border-2 border-dark rounded-3 p-5 mt-5 bg bg-">
				<div class="col-10">
					<h4>뉴스 기사 작성 관련 규정</h4>
					<p class="mt-5">
						타인을 비방하는 글 혹은 악의적인 글 업로드 시, 법적인 조치를 받을 수 있다는 점 참고바랍니다.<br>
						자세한 기사 작성 관련 규정은 하단 <span style="color:blue;">'자세히보기'</span> 버튼을 통해 확인해주세요.
					</p>
				</div>
				<div class="col-10">
					<input type="button" class="btn btn-outline-dark mt-3 fw-bold" data-bs-toggle="modal" data-bs-target="#regulationModal" value="자세히보기" />
				</div>
				</div>
				
				<!-- 작성완료/저장 - 폼 닫기 -->
				<div class="row border border-2 border-dark rounded-3 p-5 mt-5">
				<div class="col">
					<h4>작성 완료 및 저장</h4>
					<p class="mt-5">
						작성 완료 버튼을 눌러 기사 작성을 완료할 수 있습니다.<br>
						저장된 기사는 추후 편집 혹은 삭제가 가능합니다. 
					</p>
					
					<input type="submit" value="수정완료" class="btn btn-dark mt-3"/>
				</div>
				</div>
			
			</form>
	
	</div>	
	</div>

	
</div>
</div>

