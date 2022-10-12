<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식당 상세페이지</title>
<style>
	* {
		margin : 0px;
		padding : 0px;
	}

	.restaurant_top{
		width : 100%;
		height : 340px;
	 	background-color : red; 
		margin-bottom : 6px;
	}
	
	.restaurant_left {
		width : 80%;
		height : 4432px;
	/* 	background-color : blue; */
		float : left;
		display : inline-block;
	}
	.restaurant_right {
		width : 20%;
		height : 4432px;
	 	background-color : yellow; 
		display : inline-block;
	}
	
	.haha {
		width : 100%;
	/* 	border : 1px solid black; */
	}
	
	.restaurant_content {
		border : 1px solid black;
		width : 800px;
		height : 4432px;
		background-color : white;
		margin : auto;
		padding : 0 20px;
	}
	
	.restaurant_content div.first {
		border-bottom : 1px solid #e9e9e9;
	}
	
	.detail td {
		border : 1px solid black;
	}
	
	.middle {
		border-bottom : 1px solid #e9e9e9;
		padding : 23px 0px;
	}
	
	/* 더보기 버튼 css */
	
	div.more {
		clear : both;
	}
	
	div.more span {
		color : #FF792A;
	}
	
	.more {
		position : relative;
	/*  border : 1px solid black;  */
		padding-top : 30px;
	 	border-top : 1px solid #e9e9e9; 
	}
	
	.more div {
	/*  	border : 1px solid black; */ 
		width : 800px;
		margin : 0 auto;
		text-align : center;
		height : 50px;
	}
	
	.more img {
		position : absolute;
		top : 30px;
	}
	
	.best_other_restaurant ul li img {
		/* border : 1px solid black; */
		width : 383px;
		height : 255px;
	}
	
	.best_other_restaurant ul li {
		list-style-type : none;
	}
	
	.target1, .target3 {
		border : 1px solid blue;
		margin-right : 27px;
	}
	
	.relative_top_list td {
		border : 10px solid white;
		background-image : url("http://localhost:9000/mangoplate/resources/images/test1.jpg");
		width : 380px;
		height : 180px;
	}
	
	.relative_Story td {
		border : 1px solid black;
		background-image : url("http://localhost:9000/mangoplate/resources/images/test1.jpg");
		width : 392px;
		height : 180px;
	}
	
	.no1, .no2, .no3 {
		padding : 33px 0px;
	}
	
	.no1 {
		margin : 20px 0px 0px;
	}
	
</style>
</head>
<body>
<!-- header -->
<iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe>

<!-- content -->
<section class="restaurant_top">
	<div></div>
</section>
<section class="haha">
	<article class="restaurant_left">
		<div class="restaurant_content">
			<div class="first">
				<ul>
					<li>패스트리부티크</li>
					<li>4.7</li>
					<li>서울신라호텔</li>
				</ul>
				<ul>
					<li>217,989</li>
					<li>99</li>
					<li>3,618</li>
				</ul>
			</div>
			<div class = "middle">
				<table class="detail">
					<tr>
						<td>주소</td>
						<td>서울특별시 중구 동호로 249 서울신라호텔 1F</td>
					</tr>
					<tr>
						<td></td>
						<td>서울시 중구 장충동2가 202 서울신라호텔 1F</td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td>02-2230-3377</td>
					</tr>
					<tr>
						<td>음식 종류</td>
						<td>베이커리</td>
					</tr>
					<tr>
						<td>가격대</td>
						<td>4만원 이상</td>
					</tr>
					<tr>
						<td>주차</td>
						<td>발렛</td>
					</tr>
					<tr>
						<td>영업시간</td>
						<td>07:00 - 22:00</td>
					</tr>
					<tr>
						<td>메뉴</td>
						<td>자허토르테</td>
						<td>55,000원</td>
					</tr>
				</table>
				<span>업데이트</span>
				<span>:</span>
				<span>2022.10.16</span>
			</div>
			<div>
				<p>리뷰</p>
			</div>
			<div class="more">
				<div>
					<img src="http://localhost:9000/mangoplate/resources/images/12323.png" width="25px"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<span>더보기</span>
					<span>&nbsp;<img src="http://localhost:9000/mangoplate/resources/images/12323.png" width="25px"></span>
				</div>
			</div>
			<div class="no1">
				<h3>서울 디저트 맛집 베스트 30곳</h3>
				<h3>에 있는 다른 식당</h3>
				<table class="best_other_restaurant">
					<tr>
						<td>
							<ul class="target1">
								<li><img src="http://localhost:9000/mangoplate/resources/images/test1.jpg"></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</td>
						<td>
							<ul class="target2">
								<li><img src="http://localhost:9000/mangoplate/resources/images/test1.jpg"></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</td>
					</tr>
					<tr>
						<td>
							<ul class="target3">
								<li><img src="http://localhost:9000/mangoplate/resources/images/test1.jpg"></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</td>
						<td>
							<ul class="target4">
								<li><img src="http://localhost:9000/mangoplate/resources/images/test1.jpg"></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</td>
					</tr>
				</table>
			</div>
			<div class="no2">
				<h3>관련 TOP리스트</h3>
				<table class="relative_top_list">
					<tr>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
			<div class="no3">
				<h3>관련 스토리</h3>
				<table class="relative_Story">
					<tr>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
	</article>
	<article class="restaurant_right">
		<div></div>
	</article>
</section>

</body>
<!-- footer Include -->
   <iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>	
</html>