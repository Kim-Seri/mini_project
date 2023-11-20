<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">NO</th>
      <th scope="col">제목</th>
      <th scope="col">카테고리</th>
      <th scope="col">작성자</th>
      <th scope="col">작성일</th>
    </tr>
  </thead>
  <tbody class="text-secondary">
  <c:forEach var="na" items="${nListAll}">
	    <tr>
		      <td>${na.no}</td>
		      <td><a href="newsDetail?news_no=${na.no}" class="text-decoration-none link-secondary">${na.title}</a></td>
		      <td>${na.categoryId}</td>
		      <td>${na.writer}</td>
		       <td><fmt:formatDate value="${na.regDate}" pattern="yyyy-MM-dd" /></td>
	    </tr>
    </c:forEach>
  </tbody>
</table>