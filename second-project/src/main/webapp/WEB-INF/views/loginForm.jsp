<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/bootstrap/bootstrap.min.css" rel="stylesheet" >
</head>
<body>
	<div class="container">
	<div class="row ">
		<div class="col-8  offset-2 bg-light border rounded p-3 ">
			<form action="login"  name="loginForm" id="loginForm" method="post">
				<div class="row">
					<div class="col text-center">
						<h2 class="fw-bold"> 로그인 </h2>
					</div>
				</div>
				<div class="row">
					<div class="col-6 offset-3 p-3">
						<div class="row">
							<div class="col">
								<label class="form-label" for="userId">아이디</label>
								<input type="text" name="userId" id="userId" class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label class="form-label" for="pass">비밀번호</label>
								<input type="password" name="pass" id="pass" class="form-control">
							</div>
						</div>
					</div>
					<div class="col-2 p-3">
						<input type="submit" class="btn btn-dark h-100 w-100" value="로그인">
					</div>
				</div>
			</form>
		</div>
	</div>
	</div>
	<script src="resources/bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>