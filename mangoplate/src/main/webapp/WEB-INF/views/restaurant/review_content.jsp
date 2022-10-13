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
	
	/* 배경관련 css */
	
	body {
		background-color : #e9e9e9;
	}
	
	/* 가운데 흰 부분 관련 css */
	
	.review_content {
		width : 630px;
		height : 486px;
		background-color : #ffffff;
		margin : 7px auto;
	 	padding : 10px 0px;
	}
	
	/* content 관련 css */
	
	.real_content {
		width : 600px;
		height : 466px;
	/* 	border : 1px solid black; */
		margin : auto;
	}
	
	.first_div {
		width : 570px;
		margin : 10px auto;
	}
	
	.first_div div:nth-child(1) {
	/* 	border : 1px solid blue; */
		width : 300px;
		float : left;
	}
	
	.first_div div:nth-child(1) img {
		width : 42px;
		height : 42px;
	/* 	border : 1px solid red; */
		float : left;
		margin-top : 4px;
	}
	
	.first_div div:nth-child(1) p {
		font-size : 16px;
		margin-left : 50px;
		margin-top : 4px;
	}
	
	.first_div div:nth-child(1) span {
		font-size : 12px;
	}
	
	.first_div div:nth-child(2) {
	/* 	border : 1px solid red; */
		width : 42px;
		float : right;
		margin-bottom : 20px;
		position : relative;
	}
	
	.first_div div:nth-child(2) img {
	/* 	border : 1px solid yellow; */
		width : 42px;
		height : 42px;
	}
	
	.first_div div:nth-child(2) span {
		color : #ff7100;
		font-size : 12px;
	/* 	border : 1px solid blue; */
		position : absolute;
		top : 40px;
		left : 3px;
	}
	
	.real_content div:nth-child(2) p {
		width : 570px;
		height : 150px;
	/* 	border : 1px solid red; */
		margin : 0px auto 10px;
		clear : both;
		font-size : 15px;
		color : #434343;
	}
	
	.real_content div:nth-child(3) {
		width : 570px;
		margin : auto;
	/* 	border : 1px solid red; */
	}
	
	.real_content div:nth-child(3) img {
		width : 200px;
		height : 200px;
		clear : both;
	}
	
</style>
</head>
<body>
	<!-- header -->
	<iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe>
	<article class="review_content">
		<section class="real_content">
			<div class="first_div">
				<div>
					<img src="http://localhost:9000/mangoplate/resources/images/profile.jpg">
					<p>아이디<p>
					<span>조회수</span>
				</div>
				<div>
					<img src="http://localhost:9000/mangoplate/resources/images/delicious_checked.png">
					<span>맛있다</span>
				</div>
			</div>
			<div>
				<p>반찬은 그렇게 맛있지 않은데 기본으로 주는 채소무침? 이 진짜 맛있어요ㅋㅋㅋ 
				양념갈비는 그냥 양념갈비지 라고 생각하고 갔는데 고기는 특별하지 않지만 분위기가 진짜 특별합니다ㅋㅋㅋㅋ 
				고기 구워주시는 분이 인간적이고 오랜만에 어머니 같은 느낌을 받아서 좋았어요ㅋㅋ 집근처에 있으면 자주 갈 것 같네요ㅋㅋㅋ 
				된장찌개도 무난하게 맛있었습니다ㅋㅋ 양에 비해 서비스가 많아서 좋아요ㅋㅋ 꼭 가는거 추천입니다.</p>
			</div>
			<div>
				<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg">
				<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg">
			</div>
		</section>
	</article>
</body>
</html>