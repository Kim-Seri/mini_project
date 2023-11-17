
// DOM이 준비되면 실행
$(function() {
	
	// writeForm 유효성 검사
	$("#writeForm").on("submit", function(){
		
		if("#title").val().length <= 0) {
			alert("제목을 입력해주세요.");
			return false;
		}
	
		if("#content").val().length <= 0) {
			alert("내용을 입력해주세요.");
			return false;
		}
		
	});
	
});