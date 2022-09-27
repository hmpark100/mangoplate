<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고스토리 list</title>
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/am-pagination.css">
<script
	src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script
	src="http://localhost:9000/mangoplate/resources/js/am-pagination.js"></script>
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mangoplate/header.do" width="100%"
		height="61px" scrolling="no" frameborder=0></iframe>


	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<main class="pg-all_picks">
		<aside class="represented-picks">
			<div class="content">
				<table class="board">
					<tr>
						<td colspan="4"><a href="boardstory_write.do">
								<button type="button" class="btn_style">글쓰기</button>
						</a></td>
					</tr>
				</table>
			</div>
			<div class="slider-container">
				<ul class="list-represented-picks">
					<li>
						<%-- <a href="board_content.do?bid=${vo.bid}">${vo.btitle}</a> --%>
						<a href="/mango_picks/2516"
						onclick="trackEvent('CLICK_FEATUED_PICK', {&quot;position&quot;:0,&quot;story_id&quot;:2516})">
							<figure class="mango-pick-item">
								<div class="thumb"
									style="background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/jcedyaw8flkxst.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80)">
								</div>
								<figcaption>
									<strong class="title">[9월 월간망고] 망고걸이 대신 가본 &lt;인소울&gt;</strong>
									<p class="desc">셰프의 소울을 담은 한우의 맛!</p>
								</figcaption>
							</figure>
					</a>
					</li>
				</ul>
			</div>
		</aside>
		<section class="module editors-pick">
			<div class="inner">
				<p class="title only-mobile">에디터 추천 스토리</p>
				<h1 class="title only-desktop">에디터 입맛별 맛집 매거진</h1>
				<ul class="list-editors-pick">
					<li class="mango-pick-item-content-wrap"><a
						onclick="trackEvent('CLICK_STORY', {&quot;position&quot;:0,&quot;story_id&quot;:2549});"
						href="http://localhost:9000/mangoplate/boardstory_content.do">
							<figure class="mango-pick-item">
								<div class="thumb lazy"
									data-original="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/aqoyibtnt4k7wi.png?fit=around|585:345&amp;crop=585:345;*,*&amp;output-format=jpg&amp;output-quality=80"
									data-error="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80"
									style="display: block; background-image: url(&quot;https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/aqoyibtnt4k7wi.png?fit=around|585:345&amp;crop=585:345;*,*&amp;output-format=jpg&amp;output-quality=80&quot;);">
								</div>

								<figcaption>
									<strong class="title">아침을 여는 카페 BEST 9</strong>

									<p class="hash">일찍부터 카페로 향하는 아침형 인간들을 위하여</p>

									<figure class="editor only-mobile">
										<span class="badge"></span>

										<div class="thumb">
											<img class="center-crop lazy" alt="뚜래블러"
												data-original="https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/716698_1599309240834?fit=around|89:89&amp;crop=89:89;*,*&amp;output-format=jpg&amp;output-quality=80"
												data-error="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/jmcmlp180qwkp1jj.png?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80"
												src="https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/716698_1599309240834?fit=around|89:89&amp;crop=89:89;*,*&amp;output-format=jpg&amp;output-quality=80"
												style="display: block;">
										</div>

										<figcaption>뚜래블러</figcaption>
									</figure>
								</figcaption>

								<figure class="editor only-desktop">
									<span class="badge"></span>

									<div class="thumb">
										<img class="center-crop lazy" alt="뚜래블러"
											data-original="https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/716698_1599309240834?fit=around|89:89&amp;crop=89:89;*,*&amp;output-format=jpg&amp;output-quality=80"
											data-error="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/jmcmlp180qwkp1jj.png?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80"
											src="https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/716698_1599309240834?fit=around|89:89&amp;crop=89:89;*,*&amp;output-format=jpg&amp;output-quality=80"
											style="display: block;">
									</div>

									<figcaption>뚜래블러</figcaption>
								</figure>
							</figure>

							<div class="review-content">
								<figure class="user">
									<figcaption>뚜래블러</figcaption>
								</figure>
								<p>✔️ 오늘의 스토리텔러 소개 안녕하세요, 여행과 맛집을 좋아하는 뚜래블러입니다. 커피와 디저트를
									좋아해서 인스타그램에 카페를 주로 소개하곤 하는데요. 가끔은 출근전에도 아침 일찍 일어나 카페투어를 하곤 합니다.
									그렇게 찾아가 봤던 아침형 카페를 소개드려볼게요! - Instagram @jay_taster</p>
							</div>
					</a></li>
				</ul>
			</div>
		</section>
	</main>

	<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%"
		height="738px" scrolling="no" frameborder=0></iframe>


</body>
</html>







