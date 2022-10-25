<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고플레이트</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	헤더
	
	지역선택
	
	
	<a href="admin_eatdeal_write.do">
					<button type="button" class="btn_style">글쓰기</button></a>
	
	<table>
		
			
		<c:forEach var="vo" items="${ list }">	
			<c:choose>
				<c:when test="${ vo.stock eq 0}"> <%-- 이거는 오히려 일반 eatdeal에 있어야함 --%>
				
					<tr>
						<td>					
							<img src="http://localhost:9000/mangoplate/resources/upload/${ vo.esimage1 }" height=auto>	
						</td>
					<td>${ vo.price }</td>
						<td>[${ vo.region}]${ vo.ename }</td>
						<td>${ vo.menu }</td>
						<td>${ vo.packaging }</td>
					</tr>
				
				</c:when>
				<c:otherwise> 
				
					<tr>
						<td>
							<a href="admin_eatdeal_content.do?eid=${ vo.eid }">
								<img src="http://localhost:9000/mangoplate/resources/upload/${ vo.esimage1 }" height=auto>
							</a>
						</td>
						<td>${ vo.price }</td>
						<td>[${ vo.region}]${ vo.ename }</td>
						<td>${ vo.menu }</td>
						<td>${ vo.packaging }</td>
					</tr>
				
				</c:otherwise>
			</c:choose>
		</c:forEach>	
			
	</table>
	푸터	
</body>
</html>