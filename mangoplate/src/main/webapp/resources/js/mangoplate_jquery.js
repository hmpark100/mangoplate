$(document).ready(function(){
	
	/*********************
		망고스토리 에디터 등록 폼
	**********************/
	$("#btnBoardStoryWrite").click(()=>{
		if($("#editer").val() == ""){
			alert("에디터를 입력해주세요");
			$("#editer").focus();
			return false;
		}else if($("#stitle").val() == ""){
			alert("제목을 입력해주세요");
			$("#stitle").focus();
			return false;
		}else if($("#sstitle").val() == ""){
			alert("소제목을 입력해주세요");
			$("#sstitle").focus();
			return false;
		}else{
			//서버전송
			boardWriteForm.submit();
		}
	});
	
	
});//ready function

