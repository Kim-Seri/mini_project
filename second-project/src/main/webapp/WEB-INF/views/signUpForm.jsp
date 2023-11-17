<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/bootstrap/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">

		<div class="row my-3 py-3">
			<div class="col-8  offset-2 bg-light border rounded p-3 ">
				<div class="row">
					<div class="col text-center">
						<h2 class="fw-bold">회원가입 절차</h2>
					</div>
				</div>
				<div class="row">
					<div class="col text-center">
						<h5>회원가입 절차 설명 넣기</h5>
					</div>
				</div>
			</div>
		</div>

		<form action="signUp" name="signUpForm" id="signUpForm" method="post">
		<input type="hidden" name="isIdCheck" id="isIdCheck" value="false">
			<div class="row ">
				<div class="col-8  offset-2 bg-light border rounded py-3 ">
					<div class="row">
						<div class="col text-center">
							<h2 class="fw-bold">회원가입</h2>
						</div>
					</div>
					<div class="row mt-3 mb-3">
						<div class="col-6 offset-3 p-3">
							<div class="row my-3">
								<div class="col">
									<label class="form-label" for="name">이름</label>
									 <input type="text" name="name" id="name" class="form-control">
								</div>
							</div>
							<div class="row my-3">
								<div class="col">
									<label class="form-label" for="userId">아이디</label>
									<div class="row">
										<div class="col-8">
											<input type="text" name="userId" id="userId" class="form-control">
											<label id="label1"></label>
										</div>
										<div class="col-4 text-end">
											<input type="button" id="btnIdCheck" class="btn btn-dark" value="중복확인">
										</div>
									</div>
							</div>
							<div class="row my-3">
								<div class="col">
									<label class="form-label" for="pass">비밀번호</label> 
									<input type="password" name="pass" id="pass" class="form-control">
								</div>
							</div>
							<div class="row my-3">
								<div class="col">
									<label class="form-label" for="pass">전화번호</label> 
									
									<div class="row">
									<div class="col">
										<select class="form-select" name="phone1" id="phone1">
											<option>010</option>
											<option>011</option>
											<option>019</option>
										</select>	
									</div>-
									<div class="col">
										<input type="text" name="phone2" id="phone2" class="form-control">
									</div>-
									<div class="col">
										<input type="text" name="phone3" id="phone3" class="form-control">
									</div>
									</div>
								</div>
							</div>
							
							<div class="row my-3">
								<div class="col">
									<label class="form-label" for="emailId">이메일</label> 
								
								<div class="row">
									<div class="col">
										<input type="text" class="form-control" name="emailId" id="emailId">			
									</div>@
								
									<div class="col">
										<input type="text" class="form-control" name="emailDomain" id="emailDomain">					
									</div>	
									
									<div class="col">
										<select class="form-select" name="selectDomain" id="selectDomain">
											<option>직접 입력</option>
											<option>네이버</option>
											<option>다음</option>
											<option>구글</option>
											<option>카카오</option>
										</select>					
									</div>
									
								</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			</div>
			
			<div class="row my-3 py-3">
			<div class="col-8  offset-2 bg-light border rounded p-3 ">
				<div class="row">
					<div class="col text-center">
						<h2 class="fw-bold">관심분야 선택</h2>
						
						
						
						<div class="btn-group mt-5" role="group" aria-label="Basic radio toggle button group">
						
							<div class="row g-3">
								<div class="col-4">
									<input type="radio" class="btn-check" name="interest" id="economic" value="경제" checked>
								    <label class="btn btn-outline-dark" for="economic">경제</label>
								</div>
								<div class="col-4">
									<input type="radio" class="btn-check" name="interest" id="politics" value="정치">
								  	<label class="btn btn-outline-dark" for="politics">정치</label>
								</div>
								<div class="col-4">
									<input type="radio" class="btn-check" name="interest" id="social" value="사회">
								  	<label class="btn btn-outline-dark" for="social">사회</label>
								</div>	  						
	
								  <div class="col-4">
									<input type="radio" class="btn-check" name="interest" id="tech" value="기술">
								    <label class="btn btn-outline-dark" for="tech">기술</label>
								</div>
								<div class="col-4">
									<input type="radio" class="btn-check" name="interest" id="culture" value="문화">
								  	<label class="btn btn-outline-dark" for="culture">문화</label>
								</div>
								<div class="col-4">
									<input type="radio" class="btn-check" name="interest" id="entertainment" value="연예">
								  	<label class="btn btn-outline-dark" for="entertainment">연예</label>
								</div>	 					
							</div>
						
						</div>
				
					</div>
				</div>
				
			</div>
		</div>
		<div class="row">
			<div class="col-8 text-center  offset-2">
				<input type="submit" value=" 회원가입" class="btn btn-outline-dark" id="btnSignUp">
			</div>
		</div>
		
		</form>

	</div>
	<script src="resources/bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>