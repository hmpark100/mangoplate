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
<script
	src="http://localhost:9000/mangoplate/resources/js/mangoplate_jquery.js"></script>
<script
	src="http://localhost:9000/mangoplate/resources/js/mangoplate_index.js"></script>
<script>
$(document).ready(function() {
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
		/* $("#myModal").click(); */
	}
	
	if(join_result == 'ok'){
		alert("회원가입에 성공하셨습니다.");
	}
});
</script>

<style>
.main-header {
	margin-top: 61px;
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

	<!-- 메이페이지 컨텐츠  -->

	<!-- ------------------------------------------ -->
	<!-- ------------ Content finish -------------- -->
	<!-- ------------------------------------------ -->

	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no"
		frameborder=0></iframe>
</body>
</html>
