<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">

<style>
	* {
		margin: 0px;
		padding: 0px;
	}
	
	.content {
	/* 	border: 1px solid red; */
		width: 100%;
	/* 	height: auto; */
		margin-top: 61px;
	}
	
	.personality_head {
		border: 1px solid blue;
		width: 100%;
		height: 100px;
	}
	
	.personality {
		border: 1px solid blue;
		width: 100%;
		height: 200px;
	}
	
	.mypage {
		border : 1px solid black;
		width: 100%;
		height: 800px;
	}
	
	.wish {
		border: 1px solid blue;
		/* background-color: blue; */
		width: 50%;
		height: 800px;
	 	float : left;
		display : inline-block;
		text-align: center;
		padding: 10px;
	}
	
	.recent {
		border: 1px solid green;
		/* background-color: green; */
		width: 50%;
		height: 800px;
		display : inline-block;
		clear:both;
		text-align: center;
		padding: 10px;
	}
</style>
</head>
<body>
	<!-- Header Include -->
 	<jsp:include page="../header.jsp"></jsp:include> 
	<!-- <iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe> -->
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<section class="information">
			<div class="personality_head">
				<p>My Mangoplate</p>
			</div>
				<div class="personality">Profile</div>
		</section>
		
		<section class="mypage">
			<div class="wish">
				<p>가고싶다</p>
				<img alt="" src="http://localhost:9000/mangoplate/resources/images/wishstar.png">
				<p>격하게 가고싶다..</p>
				<span>식당의 '별' 아이콘을 누르면 가고싶은 곳을 쉽게 저장할 수 있습니다.</span>
			</div>
			<div class="recent">
				<p>최근 본 맛집 </p>
				<p>거기가 어디였지?</p>
				<span>내가 둘러 본 식당이 이 곳에 순서대로 기록됩니다.</span>
				
			</div>
		</section>
	</div>
	
	<!-- footer Include -->
 	<iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>
</body>
</html>






