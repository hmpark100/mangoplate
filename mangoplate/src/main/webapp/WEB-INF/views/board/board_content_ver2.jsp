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
	
	article.top {
		border : 1px solid rgb(219,219,219);
		width : 100%;
		height : 210px;
		margin-bottom : 33px;
		text-align : center;
		/* padding : 30px; 너비도 100%인데 패딩까지 주면 사이즈가 넘어간다.*/
		background-color : rgb(240,240,240);
	}
	
	article.top p:first-child {
		margin-top : 50px;
		margin-bottom : 13px;
		color : grey;
		font-size : 15px;
	}
	
	article.top p:nth-child(2) {
		font-size : 38px;	
		margin-bottom : 13px;
	}
	
	article.top p:last-child {
		color : grey;
		font-size : 18px;
		margin-bottom : 8px;
	}
	
	.main {
	/* 	border : 1px solid black; */
		width : 750px;
		margin : auto;
	}
	
	.main2, .main3, .third  {
		border : 1px solid black;
		width : 900px;
		margin : auto;
	}
	
	/*  */
	.second img {
		float : left;
		margin-bottom : 20px;
	}
	
	.second {
	/* 	border : 1px solid yellow; */
		height : 230px;
	/* 	margin-bottom : 530px; */
	}
	
	.second div.bundle {
	/*  	border : 1px solid red;  */
		margin-left : 255px;
	}
	
	.second ul {
		list-style-type : none;
	}
	
	.pull {
		/* border : 1px solid blue; */
		height : 80px;
		/* width : 100%; */
	}
	
	.second ul.restaurant_name {
	/* 	border : 1px solid green;  */
		/* width : 70%; */
		float : left;
	}
	
	.second ul.restaurant_name li:nth-child(1){
		font-size : 30px;
		margin-bottom : 4px;
	}
	
 	 .push {
 	 	/* border : 1px solid red; */
 		float : right;
 		display : inline-block;
 		width : 50px;
 		height : 60px;
 		position : relative;
 	}
 
	.push span {
		/* border : 3px solid black;  */
		display : inline-block;
		font-size : 10px;
		text-align : center;
		position : absolute;
		left : 7px;
		top : 47px;
		color : rgb(155,155,155);
		
	}
	
	
	.contents2 li:nth-child(1) {
	 	border : 1px solid red; 
		/* width : 100px; */
		height : 100px;
	}
	
	.contents2 li:nth-child(2) {
	
		text-align :right;
	}
	
	
	/*  */
	.more {
		clear : both;
		text-align : center;
		color : coral;
	}
	
	article.bottom {
		border : 1px solid rgb(219,219,219);
		width : 100%;
		background-color : rgb(240,240,240);
	}
	
	h2 {
		color : #ff792a;
		font-size : 1.438rem;
		text-align : left;
		margin-left : 16px;
	}
	
	.haha section {
		float : left;
		margin-left : 16px;
		margin-right : 16px;
	}
	
	.main3 {
		clear : both;
	}
	
	
	ul.tag li {
		border : 1px solid gray;
		background-color : white;
		color : gray;
		float : left;
		border-radius : 20px;
		margin : 15px 7.5px 20px 4px;
		padding : 8px 15px;
		font-size : 14px;
		text-align : center;
		list-style-type : none;
	}
	
	.main2 li {
		list-style-type : none;
	}
	
</style>
</head>
<body>
	<article class="top">
		<p>181,458 클릭 | 2022-09-26</p>
		<p>태국 음식 맛집 베스트 35곳</p>
		<p>"국내에서 즐기는 태국 현지의 맛!"</p>
	</article>
	<article class="main">
		<section class="second">
			<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg" width="230px">
			<div class="bundle">
				<div class="pull">
					<ul class="restaurant_name">
						<li style="color:rgb(85,85,85);">1. 소이연남마오 <span style="color:coral;">4.7</span></li>
						<li style="color:grey;">서울특별시 강남구 도산대로 53길 30</li>
					</ul>
					<div class="push">
						<img src="http://localhost:9000/mangoplate/resources/images/star.png" width="58px" height="45px">
						<span>가고싶다</span>
					</div>
				</div>
				<div class="contents2">
					<ul>
						<li>리뷰</li>
						<li style="color:rgb(85,85,85);">소이연남마오 더보기 ></li>
					</ul>
				</div>
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
		<section>
			<div>
			
			</div>
		</section>
			<hr>
			<br>
		<section class="third">
			<h2>리스트 지도</h2>
			<div>
			</div>
		</section>
	</article>
	<br>
	<article class="bottom">
		<div class="main2">
			<h2>리스트의 식당과 비슷한 맛집</h2>
			<div class="haha">
				<section>
					<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg" width="192px" height="128px">
					<div>
						<ul>
							<li>아재식당</li>
							<li>4.5</li>
							<li>연남도-인도 음식</li>
						</ul>
					</div>
				</section>
				<section>
					<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg" width="192px" height="128px">
					<div>
						<ul>
							<li>아재식당</li>
							<li>4.5</li>
							<li>연남도-인도 음식</li>
						</ul>
					</div>
				</section>
				<section>
					<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg" width="192px" height="128px">
					<div>
						<ul>
							<li>아재식당</li>
							<li>4.5</li>
							<li>연남도-인도 음식</li>
						</ul>
					</div>
				</section>
				<section>
					<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg" width="192px" height="128px">
					<div>
						<ul>
							<li>아재식당</li>
							<li>4.5</li>
							<li>연남도-인도 음식</li>
						</ul>
					</div>
				</section>
			</div>
		</div>
		<div class="main3">		
			<h2>실시간 인기 키워드</h2>
			<section>
				<div class="upper_tag">
					<ul class="tag">
						<li># 전체</li>
						<li># 파스타</li>
						<li># 무한리필</li>
						<li># 이태원</li>
						<li># 고기</li>
						<li># 데이트</li>
						<li># 강남</li>
						<li># 홍대</li>
						<li># 스테이크</li>
						<li># 가로수길</li>
						<li># 디저트</li>
					</ul>
				</div>
			</section>
		</div>
	</article>
</body>
</html>