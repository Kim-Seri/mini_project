
// dom이 준비되면 실행
$(function() {
	
	// 회원가입 유효성 검사
	
	
	
	
	// 로그인 유효성 검사
	$("#loginForm").on("submit",function(){
		var id = $("#userId").val();
		var pass = $("#pass").val();
		
		if(id.length <= 0) {
			alert("아이디가 입력되지 않음");
			$("#userId").focus();
		
			return false;	
		}
		
		if(pass.length <= 0) {
			alert("비밀번호가 입력되지 않음");
			$("#userPass").focus();
			
			return false;
		}
	})


});