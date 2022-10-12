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
<style>
	.adminContent h1{
	border: 1px solid red;
	display: block;
	}
	
	.adminMain h3{
	border: 1px solid red;
	display: block;
	}
</style>
</head>
<body>
	<!-- Header Include -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="adminContent">
		<h1>관리자 페이지</h1>	
		<section class="adminMain">
			<!-- 	
			<article><a href="admin_member_list.do">회원정보</a></article>
			 -->
			 <h3>회원정보 리스트</h3>
		<table class="board">			
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>성명</th>
				<th>연락처</th>
				<th>가입날짜</th>
			</tr>
			
			<c:forEach var="vo"  items="${list}">
			<tr>
				<td>${vo.rno }</td>
				<td><a href="admin_member_content.do?id=${vo.id }">${vo.id }</a></td>
				<td>${vo.name }</td>
				<td>${vo.pnumber }</td>
				<td>${vo.mdate }</td>
			</tr>			
			</c:forEach>
			
			<tr>
				<td colspan="5"><div id="ampaginationsm"></div></td>
			</tr>
		</table>	
	</div>
		</section>
	</div>
	
	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>
</body>
</html>







