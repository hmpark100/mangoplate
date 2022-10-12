<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집리스트</title>
<style>
	* {
		margin : 0px;
		padding : 0px;
	}
	
	body {
		background-color : rgb(240,240,240);
	}
	
	section.list {
	/* 	border : 1px solid black; */
		width : 1150px;
		margin : auto;
	}
	
	section.list h1 {
	/* 	border : 1px solid yellow; */ 
		color : #FF792A;
		font-size : 20px;
		margin : 40px 0px 0px 10px; 
	}
	
	/* 상단 tag관련 css */
	
	
	ul.tag {
	/*  border : 1px solid red;  */
		list-style-type : none;
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
	}
	
	/* table.art tr td img {
		border : 1px solid yellow;
		width : 550px; height : 265px;
		padding : 0px 12px 20px 10px;
	} */
	
	table.art {
		margin : auto;
	}
	
	div.upper_tag {
		margin : 0px 0px 0px 10px;
	}
	
	table td  {
	 	border : 10px solid rgb(240,240,240); 
		width : 550px; height : 265px;
		margin : 0px; padding : 0px;
		font-size : 30px;
		color : white;
		text-align : center;
		background-image : url("http://localhost:9000/mangoplate/resources/images/test1.jpg");
		font-weight : normal;
	}

	/* 더보기 버튼 css */
	
	.more {
		position : relative;
	}
	
	.more div {
	/* 	border : 1px solid black; */
		width : 896px;
		margin : 0 auto;
		text-align : center;
		height : 50px;
		border-bottom : 1px solid #dbdbdb;
		
	}
	
	.more img {
		position : absolute;
		top : 3px;
	}
	
	article.more span {
		color : #FF792A;
	}
	
</style>
</head>
<body>
<!-- header -->
<iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe>

<!-- content -->
	<section class="list">
	<h1>믿고 보는 맛집 리스트</h1>
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
		<table class="art">
		<tr>
			<td>
				<span>군자역 맛집 베스트 10곳</span><br>
				<span>"군자역 우리 동네 핫플 총정리"</span>
			</td>
			<td>
				<span>군자역 맛집 베스트 10곳</span><br>
				<span>"군자역 우리 동네 핫플 총정리"</span>
			</td>
		</tr>
		<tr>
			<td>
			군자역 맛집 베스트 10곳
			</td>
			<td>
			군자역 맛집 20곳
			</td>
		</tr>
		<tr>
			<td>
			군자역 맛집 베스트 10곳
			</td>
			<td>
			군자역 맛집 20곳
			</td>
		</tr>
		<tr>
			<td>
			군자역 맛집 베스트 10곳
			</td>
			<td>
			군자역 맛집 20곳
			</td>
		</tr>
	</table>
	<!-- <table class="art">
		<tr>
			<td>
				<a href="#"><img src="http://localhost:9000/mangoplate/resources/images/test1.jpg"></a>
			</td>
			<td>
			<a href="#"><img src="http://localhost:9000/mangoplate/resources/images/test1.jpg"></a>
			</td>
		</tr>
		<tr>
			<td>
			<a href="#"><img src="http://localhost:9000/mangoplate/resources/images/test1.jpg"></a>
			</td>
			<td>
			<a href="#"><img src="http://localhost:9000/mangoplate/resources/images/test1.jpg"></a>
			</td>
		</tr>
		<tr>
			<td>
			<a href="#"><img src="http://localhost:9000/mangoplate/resources/images/test1.jpg"></a>
			</td>
			<td>
			<a href="#"><img src="http://localhost:9000/mangoplate/resources/images/test1.jpg"></a>
			</td>
		</tr>
		<tr>
			<td>
			<a href="#"><img src="http://localhost:9000/mangoplate/resources/images/test1.jpg"></a>
			</td>
			<td>
			<a href="#"><img src="http://localhost:9000/mangoplate/resources/images/test1.jpg"></a>
			</td>
		</tr>
	</table> -->
		<article class="more">
			<div>
				<img src="http://localhost:9000/mangoplate/resources/images/12323.png" width="25px"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<span>더보기</span>
				<span>&nbsp;<img src="http://localhost:9000/mangoplate/resources/images/12323.png" width="25px"></span>
			</div>
		</article>
	</section>
<!-- footer Include -->
   <iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>	

</body>
</html>