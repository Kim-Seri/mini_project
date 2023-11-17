
function joinFormCheck() {
	
	if($("#userId").val().length == 0) {
		alert("아이디를 입력해 주세요");
		return false;
	}
	if($("#name").val().length == 0) {
		alert("이름를 입력해 주세요");
		return false;
	}
	
	if($("#isIdCheck").val() == 'false') {
		alert("아이디 중복을 체크해 주세요");
		return false;
	}
	if($("#pass").val().length == 0) {
		alert("비밀번호를 입력해 주세요");
		return false;
	}
	if($("#emailId").val().length == 0) {
		alert("이메일 아이디 입력해 주세요");
		return false;
	}
	if($("#emailDomain").val().length == 0) {
		alert("이메일 도메인을 입력해 주세요");
		return false;
	}
	if($("#phone2").val().length == 0 || $("#phone3").val().length == 0) {
		alert("전화번호를 입력해 주세요");
		return false;
	}		
}

function inputCharReplace() {
	let regExp = /[^A-Za-z0-9]/gi;
		
	// 입력 값이 숫자 또는 영문자인지 판단 - 정규표현식(Regular Expression)
	if(regExp.test($(this).val())) {
		alert("영문 대소문자와 숫자만 입력할 수 있음");
		$(this).val($(this).val().replace(regExp, ""));
	}
}

function inputEmailDomainReplace() {
	let regExp = /[^A-Za-z0-9\.]/gi;
		
	// 입력 값이 숫자 또는 영문자인지 판단 - 정규표현식(Regular Expression)
	if(regExp.test($(this).val())) {
		alert("이메일 도메인은 영문 대소문자와 숫자, 점(.)만 입력할 수 있음");
		$(this).val($(this).val().replace(regExp, ""));
	}
}

// dom이 준비되면 실행
$(function() {
		
		$("#userId").on("keyup", inputCharReplace);
		$("#pass").on("keyup", inputCharReplace);
		$("#emailId").on("keyup", inputCharReplace);
		$("#emailDomain").on("keyup", inputEmailDomainReplace);
	
		//아이디
		$("#userId").on("keyup", function() {
		
		let id = $(this).val();
		let regExp = /[^A-Za-z0-9]/gi;
		
		// 입력 값이 숫자 또는 영문자인지 판단 - 정규표현식(Regular Expression)
		if(regExp.test(id)) {
			alert("영문 대소문자와 숫자만 입력할 수 있음");
			$(this).val($(this).val().replace(regExp, ""));
		}
		
	});
	
		//회원가입 유효성검사
		$("#signUpForm").on("submit",function(){
			
			return joinFormCheck(this);
		})
		
		//회원가입 아이디 중복검사
		$("#btnIdCheck").on("click",function(){
			var id=$("#userId").val()
				if(id == '' || id.length == 0) {
		    		$("#label1").css("color", "red").text("공백은 ID로 사용할 수 없습니다.");
		    		return false;
		    	}
			var idCheck=$("#isIdCheck").val();
			
			//Ajax로 전송
			$.ajax({
				url:"ConfirmId",
				data:{id : id},
				type:"POST",
				dataType:"json",
				success:function(resData){
					console.log(resData.result);
					console.log(resData);
					if(resData.result) {
						$("#label1").css("color", "black").text("사용 가능한 ID 입니다.");
						$("#isIdCheck").val("true");
						console.log(id);
						
					}else {
						$("#label1").css("color", "red").text("사용 불가능한 ID 입니다.");
        				$("userId").val('');
					}
				},
				"error": function(xhr, statusText, err) {
					console.error("error ...");
				}
			});
		});
	
	// domain 변경되었을 때
		$("#selectDomain").on("change", function() {
			
			let domain = $(this).val();
			if(domain == "직접 입력") {
				$("#emailDomain").val("");
				$("#emailDomain").prop("readonly", false);
				$("#emailDomain").focus();
			} else if (domain == "네이버") {
				$("#emailDomain").val("naver.com");
				$("#emailDomain").prop("readonly", true);
			} else if (domain == "다음") {
				$("#emailDomain").val("daum.net");
				$("#emailDomain").prop("readonly", true);
			} else if (domain == "구글") {
				$("#emailDomain").val("gmail.com");
				$("#emailDomain").prop("readonly", true);
			} else if (domain == "카카오") {
				$("#emailDomain").val("kakao.com");
				$("#emailDomain").prop("readonly", true);
			}

		});
	
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