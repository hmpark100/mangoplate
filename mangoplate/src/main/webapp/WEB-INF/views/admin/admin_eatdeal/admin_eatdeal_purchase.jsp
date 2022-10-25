<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고플레이트</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mangoplate/header.do" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<h1>eatdeal-구매하기</h1>
		<form name="boardDeleteForm" action="admin_eatdeal_purchase_check.do" method="post">
			<input type="hidden" name="eid" value="${vo.eid}">
			<ul>
				<li>
					<img src="http://localhost:9000/mangoplate/resources/upload/${ vo.esimage1 }" height=auto> 			
				</li>				
				<li>
					<div class="flip">
						<div class="ename">[${ vo.region }]${ vo.ename }</div>
						<div>${ vo.menu }</div>
						<div>${ vo.price }</div>
					</div>
				</li>
				<li>
					<div>정말로 구매하시겠습니까?</div>
				</li>
				<li>
					<button type="submit" class="btn_style">구매완료</button>					
					<a href="admin_eatdeal_content.do?eid=${eid}"><button type="button" class="btn_style">이전페이지</button></a>
					<a href="admin_eatdeal_list.do"><button type="button" class="btn_style">리스트</button></a>
				</li>
			</ul>
		</form>
			
	</div>
	
	<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>