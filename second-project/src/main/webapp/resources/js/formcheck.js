
// DOM이 준비되면 실행
$(function() {
	
	// writeForm 유효성 검사
	$("#writeForm").on("submit", function(){
		
		if($("#title").val().length <= 0) {
			alert("제목을 입력해주세요.");
			return false;
		}
	
		if($("#content").val().length <= 0) {
			alert("내용을 입력해주세요.");
			return false;
		}
		
	});
	
	// 게시글 수정
	$("#detailModify").on("click", function() {
		
		$("#checkForm").attr("action", "update");
		$("#checkForm").submit();
		
	});
	
	// updateForm 유효성 검사
	$("#updateForm").on("submit", function(){
		
		if($("#title").val().length <= 0) {
		alert("제목을 입력해주세요.");
		return false;
		}
	
		if($("#content").val().length <= 0) {
			alert("내용을 입력해주세요.");
			return false;
		}
		
	});
	
});