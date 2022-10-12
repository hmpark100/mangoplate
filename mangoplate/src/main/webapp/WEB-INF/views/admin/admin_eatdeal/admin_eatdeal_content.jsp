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
<%-- 	이미지(슬라이드)
	[지역]식당이름(식당상세링크)
	메뉴
	가격
	개별내용
	공통내용
	구매하기(버튼)	
	id, ename, region, packaging, menu, price, scontent, common, eimage1, esimage1, eimage2, esimage --%>
	<table>
		<tr> <%-- 이미지(슬라이드) --%>
			<td>
				<c:if test="${ vo.esimage1 != null }">
						<br><br>
							<img src="http://localhost:9000/mangoplate/resources/upload/${ vo.esimage1 }" height=auto>
						<br><br>
				</c:if>
				<c:if test="${ vo.esimage2 != null }">
						<br><br>
							<img src="http://localhost:9000/mangoplate/resources/upload/${ vo.esimage2 }" height=auto>
						<br><br>
				</c:if>
			</td>
		</tr>
		<tr> <%-- [지역]식당이름(식당상세링크), 메뉴, 가격 --%>
			<td>
				<div id="${ vo.id }" class="flip">
					<div class="ename">[${ vo.region }]${ vo.ename }</div>
					<div>${ vo.menu }</div>
					<div>${ vo.price }</div>
				</div>
			</td>
		</tr>
		<tr> <%-- 방문포장가능여부, 개별내용, 공통내용 --%>
			<td>
				<div>
					<div>${ vo.packaging }</div>
					<div>${ vo.scontent }</div>
					<div>${ vo.common }</div>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div id="content_${ vo.nid }" class="content">${ vo.ncontent }
				<a href="admin_eatdeal_update.do?id=${ vo.id }"><button type="button" class="btn_style">수정하기</button></a>
				<a href="admin_eatdeal_delete.do?id=${ vo.id }"><button type="button" class="btn_style">삭제하기</button></a>
					
				</div>
			</td>
		</tr>
		
	</table>
	
	
</body>
</html>