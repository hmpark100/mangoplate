<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		padding : 0px;
		margin : 0px;
	}
	
	body {
		background-color : #e9e9e9;
	}
	
	.review_content {
		width : 630px;
		height : 486px;
		background-color : #ffffff;
		margin : 7px auto;
		padding : 10px 15px;
	}
	
	.real_content {
		width : 600px;
		height : 466px;
		border : 1px solid black;
		margin : auto;
	}
	
	.real_content div:nth-child(3) p {
		width : 570px;
		height : 105px;
		border : 1px solid red;
		margin : 0px auto 10px;
		
	}
	
	.real_content div:nth-child(2) {
		border : 1px solid red;
	}
</style>
</head>
<body>
	<!-- header -->
	<iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe>
	<article class="review_content">
		<section class="real_content">
			<div>
				<p>아이디<p>
				<span>조회수</span>
			</div>
			<div>
				<img src="">
				<span>맛있다</span>
			</div>
			<div>
				<p>리뷰</p>
			</div>
			<div>
				파일첨부
			</div>
		</section>
	</article>
</body>
</html>