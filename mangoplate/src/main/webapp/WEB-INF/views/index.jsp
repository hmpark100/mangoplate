<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>망고플레이트: 나만의 맛집 검색</title>
<!-- css -->
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script
	src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<!-- <script
	src="http://localhost:9000/mangoplate/resources/js/mangoplate_jquery.js"></script> -->
<!-- <script
	src="http://localhost:9000/mangoplate/resources/js/mangoplate_index.js"></script> -->
<script>
$(document).ready(function() {
	/* alert("1234");
	$("#myModal").trigger('click'); */
	
	let login_result = '${login_result}';
	let logout_result = '${logout_result}';
	let join_result = '${join_result}';
	let auth_result = '${auth}';
	
	
	if(logout_result == 'ok'){
		alert("로그아웃에 성공하셨습니다");
	}
	if(login_result == 'ok'){
		alert("로그인에 성공하셨습니다");
	}
	
	if(auth_result == 'fail'){
		alert("접근권한이 없습니다. 로그인을 진행해주세요.");
	}
	
	if(login_result == 'fail'){
		alert("아이디 또는 패스워드가 다릅니다. 다시 로그인해주세요.");
		$("#myModal").click();
	}
	
	if(join_result == 'ok'){
		alert("회원가입에 성공하셨습니다. 로그인을 진행해주세요.");
	}
});
</script>

<style>
.main-header {
	margin-top: 61px;
}

/* 컨텐츠 css */
.index_restaurant, .index_boardstory, .index_eatdeal {
	border: 1px solid red;
	margin: 50px;
}
	h3{
	border: 1px solid red;
	font-weight: bold;
	color: coral;
	display: inline-block;
}
	.index_restaurant p, .index_boardstory p, .index_eatdeal p {
	border: 1px solid blue;
	color: gray;
	display: inline-block;
	float: right;
	clear:both;
	padding: 5px;
	text-decoration: underline;
}

table td {
	border: 27px solid white;
	width: 550px;
	height: 265px;
	margin: 0px;
	padding: 0px;
	font-size: 30px;
	color: white;
	text-align: center;
	background-image:
		url("http://localhost:9000/mangoplate/resources/images/test1.jpg");
	font-weight: normal;
}

</style>

</head>

<body>
	<!-- Header Include -->
	<!-- <iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe> -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- ---------------------------------------- -->
	<!-- ------------- Content ------------------ -->
	<!-- ---------------------------------------- -->

	<!-- 메인페이지 헤더 -->
	<main class="pg-main">
		<article class="contents main-padding">
			<div class="main-header"
				style="background-image: url('https://mp-seoul-image-production-s3.mangoplate.com/a4283e5725fb56755b9bbeb8f285d0dc.jpg');">
				<div>
					<p class="title">솔직한 리뷰, 믿을 수 있는 평점!</p>
					<h1 class="title">망고플레이트</h1>
					<p class="options">
						<a href="#">Download app</a> <a href="#">add/Claim restaurant</a>
						<a href="#">Become a holic</a>
					</p>

					<fieldset class="main-search">
						<legend>전체 검색</legend>

						<label class="search-word" for="main-search"> <span
							class="icon">검색 :</span> <input id="main-search"
							class="HomeSearchInput" name="main-search" type="text"
							maxlength="50" placeholder="지역, 식당 또는 음식" autocomplete="off"
							onclick="trackEvent('CLICK_SEARCH_MAIN')" /> <span
							class="clear_btn">CLEAR</span>
						</label> <input class="btn-search" type="submit" value="검색"
							onclick="trackEvent('CLICK_KEYWORD_SEARCH');" />
					</fieldset>

					<aside class="shortcut-app type-main">
						<a class="btn inbound only-desktop "
							href="https://www.mangoplate.com/eat_deals"
							onclick="common_ga(&#39;PG_MAIN&#39;, &#39;CLICK_SALES_LOCAL&#39;)"
							style=""><img
							src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/nf58dxcb-7ikpwam.png"></img></a>

						<button class="btn android" data-event_term="V1"
							data-event_name="CLICK_DOWNLOAD_MAIN_ANDROID"
							onclick="trackEvent('CLICK_DOWNLOAD_MAIN_ANDROID');go_to_app_or_market(this, 'android');">
							<img
								src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/bzdlmp2toaxrdjqg.png"
								width="180" alt="android market button" />
						</button>

						<button class="btn ios" data-event_term="V1"
							data-event_name="CLICK_DOWNLOAD_MAIN_IOS"
							onclick="trackEvent('CLICK_DOWNLOAD_MAIN_IOS');go_to_app_or_market(this, 'ios');">
							<img
								src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/f7eokfaszt4gpkh6.svg?v=1"
								width="180" alt="app store" />
						</button>
					</aside>
				</div>
			</div>
		</article>
	</main>

	<!-- 메인페이지 맛집리스트 컨텐츠  -->
	<section>
		<div class="index_restaurant">
			<h3>믿고 보는 맛집 리스트</h3>
			<a href="http://localhost:9000/mangoplate/restaurant_list.do">
				<p>리스트 더보기</p>
			</a>
			<table class="art">
			<tr>
				<td><span>군자역 맛집 베스트 10곳</span><br> <span>"군자역 우리
						동네 핫플 총정리"</span></td>
				<td><span>군자역 맛집 베스트 10곳</span><br> <span>"군자역 우리
						동네 핫플 총정리"</span></td>
				<td><span>군자역 맛집 베스트 10곳</span><br> <span>"군자역 우리
						동네 핫플 총정리"</span></td>
			</tr>
			
		</table>
		</div>
	</section>
	
	<!-- 메인페이지 망고스토리 컨텐츠  -->
	<section>
		<div class="index_boardstory">
			<h3>맛집 스토리</h3>
			<a href="http://localhost:9000/mangoplate/boardstory_list.do">
				<p>스토리 더보기</p>
			</a>
		</div>	
	</section>
	
	<!-- 메인페이지 잇딜 컨텐츠  -->
	<section>
		<div class="index_eatdeal">
			<h3>EAT딜을 판매중인 식당</h3>
			<a href="http://localhost:9000/mangoplate/_list.do">
				<p>메뉴 더보기</p>
			</a>
		</div>	
	</section>
	
	
	<!-- ------------------------------------------ -->
	<!-- ------------ Content finish -------------- -->
	<!-- ------------------------------------------ -->


	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no"
		frameborder=0></iframe>
</body>
</html>
