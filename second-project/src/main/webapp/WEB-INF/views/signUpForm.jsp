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
										</div>
										<div class="col-4 text-end">
											<input type="button" class="btn btn-dark" value="중복확인">
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
										<select class="form-select" name="emailDomain" id="emailDomain">
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
						
						
						
						<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
						
							<div class="row">
								<div class="col-4">
									<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
								    <label class="btn btn-outline-primary" for="btnradio1">Radio 1</label>
								</div>
								<div class="col-4">
									<input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
								  	<label class="btn btn-outline-primary" for="btnradio2">Radio 2</label>
								</div>
								<div class="col-4">
									<input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
								  	<label class="btn btn-outline-primary" for="btnradio3">Radio 3</label>
								</div>	  						
	
								  <div class="col-4">
									<input type="radio" class="btn-check" name="btnradio" id="btnradio4" autocomplete="off" checked>
								    <label class="btn btn-outline-primary" for="btnradio4">Radio 4</label>
								</div>
								<div class="col-4">
									<input type="radio" class="btn-check" name="btnradio" id="btnradio5" autocomplete="off">
								  	<label class="btn btn-outline-primary" for="btnradio5">Radio 5</label>
								</div>
								<div class="col-4">
									<input type="radio" class="btn-check" name="btnradio" id="btnradio6" autocomplete="off">
								  	<label class="btn btn-outline-primary" for="btnradio6">Radio 6</label>
								</div>	 					
							</div>
						
						</div>
						
						
						
						
						<div class="row mt-5 mb-3">
							<div class="col text-center">
								<input type="button"  value="경제" class="btn btn-dark w-50">
							</div>
							<div class="col text-center">
								<input type="button"  value="정치" class="btn btn-dark w-50">
							</div>
							<div class="col text-center">
								<input type="button"  value="사회" class="btn btn-dark w-50">
							</div>
						</div>
						
						<div class="row my-3">
							<div class="col text-center">
								<input type="button"  value="기술" class="btn btn-dark w-50">
							</div>
							<div class="col text-center">
								<input type="button"  value="문화" class="btn btn-dark w-50">
							</div>
							<div class="col text-center">
								<input type="button"  value="연예" class="btn btn-dark w-50">
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