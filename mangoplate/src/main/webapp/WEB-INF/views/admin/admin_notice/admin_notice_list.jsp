<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고플레이트 - 공지사항</title>
<style>
	* {
		margin: 0px;
		padding: 0px;
	}
	
	h1.title {
		font-size: 28.8px;
		font-weight: normal;
		color: #ff792a;
		margin-bottom: 30px;
		line-height: 2rem;
	}
	
	div.flip {
		width:500px; height:50px;
		background-color:#FFFFFF;
		border-bottom: 1px solid #E9E9E9;
		padding: 15px 40px 0px 15px;
	}
	div.content {
		width:auto; height:auto;
		background-color:#E9E9E9;
		font-size: 12.8px;
		display:none; /* slideDown()을 실습할때는 주석 없애주면 된다 */
		padding: 20px 15px;
	}
	div.ntitle {
		font-size: 15.2px;
		color: #4f4f4f;
	}
	span.ndate {
		font-size: 11.2px;
		color: #cbcbcb;
	}
</style>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<%-- <script src="http://localhost:9000/mangoplate/resources/js/mangoplate_notice.js"></script> --%>
<script>
	$(document).ready(function(){
		
		$(".flip").click(function(){ 
			var a = $(this).attr("id");
			$("#content_"+a).slideToggle(300);
		});
		
	});
</script>
</head>
<body>
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<h1 class="title">공지사항</h1>
	
	<a href="admin_notice_write.do">
					<button type="button" class="btn_style">글쓰기</button></a>
	
	<table>
		<c:forEach var="vo" items="${ list }">
		<tr>
			<td>
				<div id="${ vo.nid }" class="flip">
					<div class="ntitle">${ vo.ntitle }</div>
					<span class="ndate">${ vo.ndate }</span>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div id="content_${ vo.nid }" class="content">${ vo.ncontent }
				<a href="admin_notice_update.do?nid=${ vo.nid }"><button type="button" class="btn_style">수정하기</button></a>
				<a href="admin_notice_delete.do?nid=${ vo.nid }"><button type="button" class="btn_style">삭제하기</button></a>
					<c:if test="${ vo.nsfile != null }">
						<br><br>
							<img src="http://localhost:9000/mangoplate/resources/upload/${ vo.nsfile }" height=auto>
						<br><br>
					</c:if>
				</div>
			</td>
		</tr>
		</c:forEach>
	</table>
	
</body>
</html>













