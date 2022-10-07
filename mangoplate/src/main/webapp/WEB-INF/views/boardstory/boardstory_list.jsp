<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고스토리 list</title>
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/am-pagination.css">
<link rel="stylesheet"
	href="http://localhost:9000/mycgv/resources/css/mycgv.css">
<link rel="stylesheet"
	href="http://localhost:9000/mycgv/resources/css/am-pagination.css">
<script
	src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script
	src="http://localhost:9000/mangoplate/resources/js/am-pagination.js"></script>
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mangoplate/header.do" width="100%"
		height="61px" scrolling="no" frameborder=0></iframe>


	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<h1>게시판-리스트</h1>
		<table class="board">
			<tr>
				<td colspan="4"><a href="board_write.do">
						<button type="button" class="btn_style">글쓰기</button>
				</a></td>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>등록날짜</th>
				<th>조회수</th>
			</tr>

			<c:forEach var="vo" items="${list}">
				<tr>
					<td>${vo.rno}</td>
					<td><a href="board_content.do?bid=${vo.bid}">${vo.btitle}</a></td>
					<td>${vo.bdate }</td>
					<td>${vo.bhits }</td>
				</tr>
			</c:forEach>

			<tr>
				<td colspan="4"><div id="ampaginationsm"></div></td>
			</tr>
		</table>
	</div>

	<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%"
		height="738px" scrolling="no" frameborder=0></iframe>


</body>
</html>







