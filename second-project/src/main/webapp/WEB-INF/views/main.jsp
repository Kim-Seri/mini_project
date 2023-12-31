<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


		<div class="row my-5" id="global-content">
		<div class="col-10 offset-1">
		
			<!-- content 영역 -->
			<div class="row mt-5">
			<div class="col">
				
				<!-- 관심분야 뉴스 영역 -->
			<c:if test="${sessionScope.isLogin}">	
				<div class="row">
					<div class="col-10 offset-1 border border-2 border-dark rounded-3">
					
						<div class="row">
						<div class="offset-1 p-5">
							<div class="row">
							<div class="col">
								<h3>관심분야 뉴스 (${nList.get(0).categoryId})</h3>
							</div>
							</div>
							<c:if test="${not empty nList}">
								<div class="row">
									<c:forEach var="n" items="${nList}" varStatus="loop">
										<c:if test="${loop.index<3}">
											<div class="col-3 m-3 p-3 border border-1 border-dark rounded-2">
												<img src="resources/upload/${n.image}" class="img-thumbnail" alt="150 * 150 size image" style="width: 200px; height: 200px;">
												<a href="newsDetail?news_no=${n.no}" class="text-decoration-none text-secondary fs-4 fw-bold">${n.title}</a>
												<p class="text-end">작성자 : ${n.writer}</p>
											</div>
										</c:if>
									</c:forEach>
								</div>
							</c:if>
							<c:if test="${empty nList}">
								<div class="row">
									<div class="col-3 m-3 p-3 border border-1 border-dark rounded-2 text-center">
										<span>게시글이 없습니다.</span>
									</div>
								</div>
							</c:if>
						</div>
						</div>
						
					</div>
				</div>
			</c:if>
				
				<!-- 카테고리별 뉴스 영역 -->
				<div class="row mt-5">
				<div class="col-10 offset-1 border border-2 border-dark rounded-3">
				
					<div class="row mt-5">
					<div class="offset-1 p-5">
					
						<div class="row mb-3">
							<div class="col-6">
								<h3>카테고리별 뉴스</h3>
							</div>
							<div class="col-6 text-center">
								<a href="NewsList" class="btn btn-outline-dark">전체 리스트</a>
							</div>
						</div>
						<c:if test="${not empty newsMap}">
							<div class="row mb-5">
							  <c:forEach var="map" items="${newsMap}">
							    <div class="col-3 p-3 border border-1 border-dark rounded-2 m-3">
							    
							      <a href="#" class="btn btn-outline-dark">${map.value.get(0).categoryId}</a>
				
							      <p class="mt-3">카테고리 설명</p>
							      <ul>
							        <c:forEach var="na" items="${map.value}" varStatus="loop">
							   
							            <li><a href="newsDetail?news_no=${na.no}" class="text-decoration-none text-secondary">${na.title}</a></li>
							          
							        </c:forEach>
							      </ul>
							    </div>
							  </c:forEach>
							</div>
						</c:if>
						<c:if test="${empty newsMap}">
							<div class="row mb-5">
								<div class="col col-3 p-3 border border-1 border-dark rounded-2 m-3 text-center">
									<span>해당 카테고리에 게시글이 존재하지 않습니다.</span>
								</div>
							</div>
						</c:if>
					</div>
					</div>
				</div>
				</div>
			</div>
			</div>
			
			<!-- 문의하기 영역 -->
			<div class="row">
			<div class="col-10 offset-1 border border-2 border-dark rounded-3 my-5">
			
				<div class="row">
				<div class="offset-1 p-5">
			
					<h3>문의하기</h3>
					<p>문의사항은 고객센터로 문의주세요.</p>
					<a href="" class="btn btn-dark">문의하기</a>
				
				</div>
				</div>
				
			</div>
			</div>
			
			
			
			<!-- footer 영역 -->
		
		
		</div>
		</div>
		
