<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	* {
		margin : 0px; padding : 0px;
	}
	
	section.top {
		border : 1px solid rgb(219,219,219);
		width : 100%;
		margin-bottom : 33px;
		text-align : center;
		padding : 30px;
		background-color : rgb(240,240,240);
	}
	
	section.top p:first-child {
		margin-top : 30px;
		margin-bottom : 13px;
		color : grey;
		font-size : 15px;
	}
	
	section.top p:nth-child(2) {
		font-size : 38px;	
		margin-bottom : 13px;
	}
	
	section.top p:last-child {
		color : grey;
		font-size : 18px;
		margin-bottom : 8px;
	}
	
	article.arti {
	/* 	border : 1px solid black; */
		width : 800px;
		margin : auto;
	}
	
	section.second {
	/*  	border : 1px solid blue; */ 
		/* clear : both; */
		height : 220px;
		margin-bottom : 10px;
	}
	
	.second img {
		float : left;
	}
	
	.second div ul li {
		list-style-type : none;
	}
	
	.second div:nth-child(2) {
		border : 1px solid red;
		padding-left : 30px;
	/* 	display:flex; justify-content:space-between;  */
	}
	
	.push {
		border : 1px solid black;
		width : 60px;
		float : right;
		/* margin-left : 100px; */
	}
	
	.push span {
		display : block;
		font-size : 10px;
	}
	
	.second div:nth-child(2) ul li:first-child {
	/* 	border : 1px solid red; */
		margin-bottom : 5px;
	}
	
	.second div:nth-child(2) ul li:nth-child(2) {
	/* 	border : 1px solid red; */
		margin-bottom : 10px;
	}
	
	.second div:nth-child(3) ul li:first-child {
		margin-bottom : 50px;
	}
	
	.second div:nth-child(3) {
	/* 	border : 1px solid blue; */
		padding-left : 248px;
	}
	
	.second div ul li:nth-child(1) {
		font-size : 30px;
	}
	
	.second div ul li:nth-child(2) {
		text-align : right;
	}
	
	.more {
		width : 100%;
		text-align : center;
	}
	
	hr {
		background-color : rgb(238,238,238);
	}
	
	.pull {
		border : 1px solid green;
		width : 100%;
		height : 100px;
	}
	
	.fff {
		border : 1px solid yellow;
		float : left;
	}
	
</style>
</head>
<body>
	<section class="top">
		<p>181,458 클릭 | 2022-09-26</p>
		<p>태국 음식 맛집 베스트 35곳</p>
		<p>"국내에서 즐기는 태국 현지의 맛!"</p>
	</section>
	<article class="arti">
		<section class="second">
			<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg" width="220px">
			<div class="pull">
				<ul class="fff">
					<li style="color:rgb(85,85,85);">1. 소이연남마오 <span style="color:coral;">4.7</span></li>
					<li style="color:grey;">서울특별시 강남구 도산대로 53길 30</li>
				</ul>
				<div class="push">
					<img src="http://localhost:9000/mangoplate/resources/images/star.png" width="60px" height="50px">
					<span>가고싶다</span>
				</div>
			</div>
			<div>
				<ul>
					<li>리뷰1</li>
					<li style="color:rgb(85,85,85);">소이연남마오 더보기 ></li>
				</ul>
			</div>
		</section>
		<section class="more">
			<span class="arrow1">∨&nbsp&nbsp</span>
			<span>더보기</span>
			<span class="arrow2">&nbsp&nbsp∨</span> 
		</section>
		<br>
		<hr>
		<br>
		<div>
		
		</div>
		<hr>
		<br>
		<div>
			<p>리스트 지도</p>
		</div>
		
		
	</article>
</body>
</html>