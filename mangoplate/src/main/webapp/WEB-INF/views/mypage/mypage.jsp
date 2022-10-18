<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mangoplate</title>
<link rel="stylesheet" href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<link rel="stylesheet" href="http://localhost:9000/mangoplate/resources/css/restaurant_detail.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
<script>
	$(document).ready(function() {
		$("#recent_close").click(function() {
			/* list가 초기화 로직*/
		});
		
		$("#profile_update").click(function() {
			/* 회원정보수정할 수 있는 페이지 호출  */
		});
	});
</script>
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
		/* border: 1px solid blue; */
		width: 100%;
		height: 300px;
		background-color: coral;
	}
	
	.personality_head h1 {
		/* border: 1px solid blue;  */
		color: white;
		font-weight:bold;
		font-size: 50px;
		font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO","sans-serif";
		/* display: inline-block; */
		display: block;
		padding-top:30px;
		margin-top: 30px;
		margin-left: 30px;
	}
	
	.personality_head p {
		/* border: 1px solid red; */
		color: white;
		font-size: 20px;
		font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO","sans-serif";
		/* display: inline-block; */
		margin-top: 20px;
		margin-left: 30px;
	}
	
	.personality {
		border: 1px solid blue;
		width: 100%;
		height: 400px;
	}
	
	.personality h3 {
		/* border: 1px solid blue; */
		color: coral;
		font-weight:bold;
		font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO","sans-serif";
		display: block; 
		margin-top: 30px;
		text-align: center;
	}
	
	.mypage {
		border : 1px solid black;
		width: 100%;
		height: 800px;
		clear:both;
	}
	
	.wish_zero {
		border: 1px solid blue;
		/* background-color: blue; */
		width: 50%;
		height: 800px;
	 	float : left;
		display : inline-block;
		text-align: center;
		padding: 10px;
	}
	
	.recent_zero {
		border: 1px solid green;
		/* background-color: green; */
		width: 50%;
		height: 800px;
		display : inline-block;
		clear:both;
		text-align: center;
		padding: 10px;
	}
	
	.member {
		border: 1px solid green;
		width: 100%;
		height: 300px;
		text-align: center;
	}
	
	.selfie {
		 border: 1px solid black;
		 width: 500px;
		 height: 300px;
		 float: left;
		/*  margin: auto;
		 text-align: center; */
	}
	
	.selfie img {
		 width: 250px;
		 height: 250px;
	}
	
	.membership{
		 border: 1px solid red;
		 display : inline-block;
		 width: 500px;
		 height: 300px;
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
				<h1>My Mangoplate</h1>
				<p>―</p>
				<p class="subtitle">Eat, Share, Be Happy.</p>
				<!-- <p class="subtitle2">망고플레이트에 오신 것을 환영합니다</p> -->
			</div>
			<div class="personality">
				<h3>Profile</h3>
				<div class="member">
					<div class="selfie">
						<img alt="" src="http://localhost:9000/mangoplate/resources/images/profile.jpg">
						<button type="button" class="btn_style">사진 설정</button>
					</div>
					<ul class="membership">
						<li>
							<label>성함</label>
							<span id="id">정우정</span>
							<%-- <span id="id">${vo.id}</span> --%>
						</li>
						<li>
							<label>전화번호</label>
							<span id="pnumber">010-1111-1111</span>
							<%-- <span id="pnumber">${vo.pnumber}</span> --%>
						</li>
						<li>
							<label>이메일</label>
							<span id="id">friendship@naver.com</span>
							<%-- <span id="id">${vo.id}</span> --%>
						</li>
						<li>
							<button type="button" class="btn_style" id="profile_update">회원정보수정</button>
						</li>
					</ul>
				</div>
			</div>
		</section>
		
		<section class="mypage">
		<div class="wish">
				<!-- 가고싶다가 하나도 클릭이 안되어있을때 -->
				<div class="wish_zero">
					<p>가고싶다</p>
					<img alt="" src="http://localhost:9000/mangoplate/resources/images/wishstar.png"> <!-- 하얀별  -->
					<p>격하게 가고싶다..</p>
					<span>식당의 '별' 아이콘을 누르면 가고싶은 곳을 쉽게 저장할 수 있습니다.</span>
				</div>
		</div>
		
		<div class="recent">	
				<!-- 최근본맛집이 하나도 없을때 또는 all clear버튼을 누른 경우 -->
				<div class="recent_zero">
					<p>최근 본 맛집 </p>
					<p>거기가 어디였지?</p>
					<span>내가 둘러 본 식당이 이 곳에 순서대로 기록됩니다.</span>
				</div>
		</div>	
		</section>
	</div>
<%-- 	
	<div class="content">
		<section class="information">
			<div class="personality_head">
				<h1>My Mangoplate</h1>
				<p class="subtitle">Eat, Share, Be Happy.</p>
				<p class="subtitle2">망고플레이트에 오신 것을 환영합니다</p>
			</div>
			<div class="personality">
				<p>Profile</p>
				<div class="selfie">
					<img alt="" src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/mangoplate-logo-horizontal.svg">
					<input type="file" name="file1">사진설정하기
				</div>
				<ul>
					<li>
						<label>성함</label>
						<span id="id">정우정</span>
						<span id="id">${vo.id}</span>
					</li>
					<li>
						<label>전화번호</label>
						<span id="pnumber">010-1111-1111</span>
						<span id="pnumber">${vo.pnumber}</span>
					</li>
					<li>
						<label>이메일</label>
						<span id="id">friendship@naver.com</span>
						<span id="id">${vo.id}</span>
					</li>
					<li>
						<button type="button" class="btn_style" id="profile_update">회원정보수정</button>
					</li>
				</ul>
			</div>
		</section>
		
		<section class="mypage">
		<div class="wish">
			<c:choose>
				<!-- 가고싶다가 하나도 클릭이 안되어있을때 -->
				<c:when test="${}"> 
				<div class="wish_zero">
					<p>가고싶다</p>
					<img alt="" src="http://localhost:9000/mangoplate/resources/images/wishstar.png"> <!-- 하얀별  -->
					<p>격하게 가고싶다..</p>
					<span>식당의 '별' 아이콘을 누르면 가고싶은 곳을 쉽게 저장할 수 있습니다.</span>
				</div>
				</c:when>
				<c:otherwise>
				<!-- 가고싶다 버튼이 클릭될때  -->
				<table  class="wish_save">
					<c:forEach var="vo" items="${}"> <!-- 주황별이 눌린 식당들이 리스트로 출력  -->
						<tr>
							<td>
								<!-- 음식사진  -->
								<!-- 식당명 -->
								<!-- 평점 -->
								<!-- 식당위치 -->	
								<button class="btn-type-icon favorite wannago_btn "
													data-restaurant_uuid="398759" data-action_id=""></button> <!-- 주황별이여야하는데 현재 하얀별 -->
							</td>
						</tr>
					</c:forEach>
				</table>
				</c:otherwise>
			</c:choose>
		</div>
		
		<div class="recent">	
			<c:choose>
				<!-- 최근본맛집이 하나도 없을때 또는 all clear버튼을 누른 경우 -->
				<c:when test="${}"> 
				<div class="recent_zero">
					<p>최근 본 맛집 </p>
					<p>거기가 어디였지?</p>
					<span>내가 둘러 본 식당이 이 곳에 순서대로 기록됩니다.</span>
				</div>
				</c:when>
				<c:otherwise>
				<!-- 최근본맛집이 한개라도 있을때  -->
				<button type="button" class="recent_close" id="recent_close">X Clear All</button>
				<table  class="recent_save">
					<c:forEach var="vo" items="${}"> <!-- detail 페이지가 눌리자마자 이 list에 데이터가 넘어온다-->
						<tr>
							<td>
								<!-- 음식사진  -->
								<!-- 식당명 -->
								<!-- 식당위치 -->	
								<button class="btn-type-icon favorite wannago_btn "
													data-restaurant_uuid="398759" data-action_id=""></button>
							</td>
						</tr>
					</c:forEach>
				</table>
				</c:otherwise>
			</c:choose>
		</div>	
		</section>
	</div> 
--%>
	<!-- footer Include -->
 	<iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>
</body>
</html>






