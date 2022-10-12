<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	헤더
	
	지역선택
	
	<table>
		<c:forEach var="vo" items="${ list }">
		<tr>
			<td>
				<img src="http://localhost:9000/mangoplate/resources/upload/${ vo.esimage1 }" height=auto>
			</td>
			<td>${ vo.price }</td>
			<td>[지역]${ vo.ename }</td>
			<td>${ vo.menu }</td>
			<td>방문포장여부</td>
		</tr>
		</c:forEach>
	</table>
	푸터	
</body>
</html>