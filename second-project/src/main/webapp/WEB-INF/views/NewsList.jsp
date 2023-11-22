<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
   
   <div class="row">
	   <div class="col-10 offset-1">
		  <div class="row my-2">
		  	<div class="col text-center">
			   <form name="searchForm" id="searchForm" action="#" 
							class="row justify-content-center my-3">
							<div class="col-auto">			
								<select name="type" class="form-select">
									<option value="title">제목</option>
									<option value="writer">작성자</option>
									<option value="content">내용</option>
								</select>
							</div>
							<div class="col-4">			
								<input type="text" name="keyword" class="form-control" >
							</div>
							<div class="col-auto">			
								<input type="submit" value="검색" class="btn btn-light">
							</div>
				</form>
			</div>
		</div>
		
		<!-- 검색 요청인 경우 -->
		<c:if test="${searchOption}">
			<div class="row mb-3">
				<div class="col text-end">
					<a href="NewsList" class="btn btn-outline-dark">전체 리스트</a>
				</div>
			</div>
		</c:if>
		
		<div class="row">
			<div class="col">
				<table class="table table-hover">
				  <thead class="table-dark">
				    <tr>
				      <th scope="col">NO</th>
				      <th scope="col">제목</th>
				      <th scope="col">카테고리</th>
				      <th scope="col">작성자</th>
				      <th scope="col">작성일</th>
				    </tr>
				  </thead>
				  
				  <tbody class="text-secondary">
				  <!-- 검색 요청이면서 게시글 있는 경우 -->
				  <c:if test="${searchOption and not empty nListAll}">
					  <c:forEach var="na" items="${nListAll}">
						    <tr>
							      <td>${na.no}</td>
							      <td><a href="newsDetail?news_no=${na.no}
							      &pageNum=${currentPage}&type=${type}&keyword=${keyword}" class="text-decoration-none link-secondary">${na.title}</a></td>
							      <td>${na.categoryId}</td>
							      <td>${na.writer}</td>
							       <td><fmt:formatDate value="${na.regDate}" pattern="yyyy-MM-dd" /></td>
						    </tr>
					    </c:forEach>
				    </c:if>
				  
				  <c:if test="${not searchOption and not empty nListAll}">
					  <c:forEach var="na" items="${nListAll}">
						    <tr>
							      <td>${na.no}</td>
							      <td><a href="newsDetail?news_no=${na.no}&pageNum=${currentPage}" class="text-decoration-none link-secondary">${na.title}</a></td>
							      <td>${na.categoryId}</td>
							      <td>${na.writer}</td>
							       <td><fmt:formatDate value="${na.regDate}" pattern="yyyy-MM-dd" /></td>
						    </tr>
					    </c:forEach>
				    </c:if>
				    
				    <c:if test="${searchOption and  empty nListAll}">
				    	<tr>
							<td colspan="5" class="text-center">"${keyword}"가 포함된 게시 글이 존재하지 않음</td>
						</tr>
				    </c:if>
				    
				     <c:if test="${not searchOption and empty nListAll}">
				     	<tr>
							<td colspan="5" class="text-center">게시 글이 존재하지 않음</td>
						</tr>
				    </c:if>
				  </tbody>
				</table>
			</div>
		</div>
		
		<!-- 검색 요청이면서 게시 글이 존재하는 경우의 페이지 네이션 -->
			<c:if test="${searchOption and not empty nListAll}">
				<div class="row">
					<div class="col">
						<nav aria-label="Page navigation">					
						  <ul class="pagination justify-content-center">					  
						  	<c:if test="${startPage > pageGroup}">
						    	<li class="page-item">
						    		<a class="page-link" 
						    			href="NewsList?pageNum=${startPage - pageGroup}
						    			&type=${type}&keyword=${keyword}">Pre</a>
						    	</li>
						    </c:if>
						    <c:forEach var="i" begin="${startPage}" end="${endPage}">
						    	<c:if test="${ i == currentPage}">
								    <li class="page-item active" aria-current="page">
								    	<span class="page-link">${i}</span>
								    </li>
							    </c:if>
							    <c:if test="${ i != currentPage}">
								    <li class="page-item">
								    	<a class="page-link" 
								    		href="NewsList?pageNum=${i}&type=${type}&keyword=${keyword}">${i}</a>
								    </li>
							    </c:if>
						    </c:forEach>
							<c:if test="${endPage < pageCount}">
						    	<li class="page-item">
						    		<a class="page-link" 
						    			href="NewsList?pageNum=${endPage + 1}&type=${type}&keyword=${keyword}">Next</a>
						    	</li>
						    </c:if>	
						  </ul>
						</nav>
					</div>
				</div>
			</c:if>
			
			<!-- 검색이 아닌면서 게시 글이 존재하는 경우의 페이지 네이션 -->
			<c:if test="${not searchOption and not empty nListAll}">
				<div class="row">
					<div class="col">
						<nav aria-label="Page navigation">					
						  <ul class="pagination justify-content-center">					  
						  	<c:if test="${startPage > pageGroup}">
						    	<li class="page-item">
						    		<a class="page-link" 
						    			href="NewsList?pageNum=${startPage - pageGroup}">Pre</a>
						    	</li>
						    </c:if>
						    <c:forEach var="i" begin="${startPage}" end="${endPage}">
						    	<c:if test="${ i == currentPage}">
								    <li class="page-item active" aria-current="page">
								    	<span class="page-link">${i}</span>
								    </li>
							    </c:if>
							    <c:if test="${ i != currentPage}">
								    <li class="page-item">
								    	<a class="page-link" 
								    		href="NewsList?pageNum=${i}">${i}</a>
								    </li>
							    </c:if>
						    </c:forEach>
							<c:if test="${endPage < pageCount}">
						    	<li class="page-item">
						    		<a class="page-link" 
						    			href="NewsList?pageNum=${endPage + 1}">Next</a>
						    	</li>
						    </c:if>	
						  </ul>
						</nav>
					</div>
				</div>
			</c:if>
	</div>
</div>