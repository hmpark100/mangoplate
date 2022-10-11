<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고스토리 write</title>
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script
	src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mangoplate/resources/js/mangoplate_jquery.js"></script>
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mangoplate/header.do" width="100%"
		height="61px" scrolling="no" frameborder=0></iframe>


	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<h1>게시판-글쓰기</h1>
		<form name="boardWriteForm" action="boardstory_write_check.do"
			  method="post">
			<ul>
				<li><label>작성자</label> <input type="text" name="stitle" id="stitle"></li>
				<li><label>제목</label> <input type="text" name="stitle" id="stitle"></li>
				<li><label>소제목</label> <input type="text" name="sstitle" id="sstitle"></li>
				<li><label>내용</label> <textarea name="scontent"></textarea></li>
				<!-- <li><label>파일첨부</label> <input type="file" name="file1">
				</li> -->
				<li>
					<button type="button" class="btn_style" id="btnBoardStoryWrite">등록완료</button>
					<button type="reset" class="btn_style">다시쓰기</button> <a
					href="boardstory_list.do">
						<button type="button" class="btn_style">리스트</button>
				</a>
				</li>
			</ul>
		</form>

	</div>

	<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%"
		height="738px" scrolling="no" frameborder=0></iframe>

</body>
</html>







