
// DOM이 준비되면 실행
$(function(){
	
	// 스크랩 버튼 클릭
	$("#detailScrap").on("click", function () {
	    var no = $("#no").val();
	    var categoryId = $("#categoryId").val();
	    

	    $.ajax({
	        type: "POST",
	        url: "scrapNews",
	        data: { no: no ,categoryId : categoryId},
	        dataType:"json",
	        success: function (response) {
	        	console.log(response.result);
	            if (response.result === 0) {
	            	
	                alert("스크랩이 완료되었습니다.");
	                location.href="myPage";
	                
	            } else if(response.result === 1) {    
	            	
	            	alert("이미 스크랩된 기사입니다.");
	            	location.href="myPage";
	            	
	            } else {
	                alert("로그인이 필요합니다.");
	                location.href="loginForm";
	            }
	        },
	        error: function () {
	            alert("오류가 발생했습니다.");
	        }
	    });
	});
	
	
	
});
