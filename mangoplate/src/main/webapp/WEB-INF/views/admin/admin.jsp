<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mangoplate</title>
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/am-pagination.css">
<script src="http://localhost:9000/mangoplate/resources/js/am-pagination.js"></script>
</head>
<body>
	<!-- Header Include -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="adminContent">
		<h1>관리자 페이지</h1>	
	<ul class="u1">
		<li><a href="admin.do" class="active">Admin</a></li>
		<li><a href="admin_member_list.do" class="active">회원정보관리</a></li>
		<li><a href="contact.asp">공지사항 관리</a></li>
		<li><a href="about.asp">eatdeal 관리</a></li>
	</ul>
	</div>
	
	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>
</body>
</html>







