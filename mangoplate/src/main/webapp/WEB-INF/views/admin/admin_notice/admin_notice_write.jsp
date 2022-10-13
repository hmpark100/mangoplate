<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고플레이트 - 공지사항</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<style>
table.board, form[name='boardWriteForm'], 
 	table.boardContent, form[name='boardUpdateForm'],
 	form[name='boardDeleteForm'] {
 		/* border:1px solid red; */
 		width:70%; margin:0 auto; 	
 		font-size:13px;	
 	}
 	table.board , table.board th, table.board td,
 	table.boardContent, table.boardContent th, 
 	table.boardContent td {
 		border:1px solid #ccc;
 		border-collapse:collapse;
 	}
 	table.board th, table.boardContent th {
 		background-color:powderblue;
 	}
 	table.board th, table.board td,
 	table.boardContent th, table.boardContent td {
 		padding:10px 0;
 	}
 	table.board td, table.boardContent { text-align:center; }
 	table.board tr:first-child td { 
 		border:1px solid #fff;
 		border-bottom:1px solid #ccc;
 		text-align:right; 
 	}
 	table.board tr:first-child td button{ 
 		/* border:1px solid blue; */
 		background-color:#ccc;
 		border-color:#ccc;
 		border-radius:5px; 		
 	}
 	table.board tr:last-child td, 
 	table.boardContent tr:last-child td { 
 		border:1px solid #fff;
 		border-top:1px solid #ccc;
 		padding-top:20px;
 	}
 	table.board  td a { 
 		text-decoration:none;
 		color:#000;
 	}
 	table.board  td a:hover { 
 		text-decoration:underline;
 	}
 	
 	form[name='boardWriteForm'] ul,
 	form[name='boardUpdateForm'] ul,
 	form[name='boardDeleteForm'] ul {
 		border:1px solid #e5e5e5; 
 		list-style-type:none;
 		margin:0; padding:20px;
 	}
 	form[name='boardWriteForm'] ul li,
 	form[name='boardUpdateForm'] ul li,
 	form[name='boardDeleteForm'] ul li { 
 		clear:left;
 		padding:5px 0px; 
 	}
 	form[name='boardWriteForm'] ul label,
 	form[name='boardUpdateForm'] ul label {
 		background-color:powderblue;
 		display:block;
 		float:left;
 		width:120px;
 		padding:8px 0px;
 		font-size:12px; color:#000;
 		text-indent:25px;
 		margin-right:10px;
 		margin-left:50px;
		font-weight:bold;
		border: 1px solid powderblue;
		border-radius:5px;
 	} 
 	form[name='boardWriteForm'] input,
 	form[name='boardUpdateForm'] input {
 		border:1px solid #ccc;
		border-radius:5px;
		width:56%;
		padding:8px 10px;
		font-size:12px;
 	}
 	form[name='boardWriteForm'] textarea,
 	form[name='boardUpdateForm'] textarea {
 		border:1px solid #ccc;
		border-radius:5px;
		width:56%;
		padding:8px 10px;
		height:100px;
 	}
 	form[name='boardWriteForm'] li:last-child,
 	form[name='boardUpdateForm'] li:last-child,
 	form[name='boardDeleteForm'] li:last-child {
 		text-align:center;
 		padding-top:20px;
 	}
 	table.boardContent tr:nth-child(2) td,
 	table.boardContent tr:nth-child(3) td {
 		/* border:1px solid blue; */
 		text-align:left;
 		text-indent:10px;
 	}
 	form[name='boardDeleteForm'] li:first-child { 	
 		text-align:center;
 	}
 	form[name='boardDeleteForm'] li:first-child img{
 		width:50%;
 	}
 	form[name='boardDeleteForm'] li:nth-child(2) div {
 		text-align:center;
 		font-size:20px; 
 		font-family:'함초롱바탕';
 		font-weight:bold;
 		padding:10px 0;
 	}
</style>
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mangoplate/resources/js/mangoplate_jquery.js"></script>
</head>
<body>
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<h1>공지사항-글쓰기</h1>
		<form name="boardWriteForm" action="admin_notice_write_check.do" method="post"
				enctype="multipart/form-data">
			<ul>
				<li>
					<label>제목</label>
					<input type="text" name="ntitle" id="ntitle">
				</li>
				<li>
					<label>내용</label>
					<textarea name="ncontent"></textarea>
				</li>
				<li>
					<label>파일첨부</label>
					<input type="file" name="file1">
				</li>
				<li>
					<button type="button" class="btn_style" id="btnNoticeWrite">등록완료</button>
					<button type="reset" class="btn_style">다시쓰기</button>
					<a href="admin_notice_list.do">
						<button type="button" class="btn_style">리스트</button></a>
					<a href="http://localhost:9000/mangoplate/admin.do"><button type="button" class="btn_style">관리자홈</button></a>
				</li>
			</ul>
		</form>
			
	</div>
</body>
</html>






