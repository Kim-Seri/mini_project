<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<style>
	
	#header {
/* 		border-style:solid;
	 　border-width: 20px;
		border-color: #0f4c81;
		border-radius: 20px; */
		/* background-color: #34558b; */
	}
	
	#img_header {
		background-image: url('<%= request.getContextPath() %>/resources/images/news window landing page_5364971.png');
        background-repeat: no-repeat;
        background-size: contain;
        height: 300px;
	}
</style>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<link href="resources/bootstrap/bootstrap.min.css" rel="stylesheet" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/member.js"></script>

<body>

	<div class="container">
	<!-- header, content, footer --> 
	<%@ include file="template/header.jsp" %> 
	<%-- jsp 표준 액션 : ${}안에는 계속 바뀜(게시글 리스트, 수정 폼 등) --%>
	<!-- 인덱스가 계속 실행이 되어야 함 -->
	 <jsp:include page="${param.body}"/>  
	<%@ include file="template/footer.jsp" %>  
	
	</div>
	
<script src="resources/bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>