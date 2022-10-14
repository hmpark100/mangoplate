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
	<!-- <iframe src="http://localhost:9000/mangoplate/header.do" width="100%"
		height="61px" scrolling="no" frameborder=0></iframe> -->
	<jsp:include page="../header.jsp"></jsp:include>


	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<main class="pg-all_picks">
		<article class="contents">
			<section class="module editors-pick">
				<div class="inner">
					<h1 class="title only-desktop">에디터 입맛별 맛집 매거진</h1>
					<tr>
						<td colspan="4"><a href="boardstory_write.do">
								<button type="button" class="btn_style">글쓰기</button>
						</a></td>
					</tr>
					<ul class="list-editors-pick">
						<li class="mango-pick-item-content-wrap"><a
							onclick="trackEvent('CLICK_STORY', {&quot;position&quot;:0,&quot;story_id&quot;:2571});"
							href="/mango_picks/2571">
								<figure class="mango-pick-item">
									<div class="thumb lazy"
										data-original="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/wy9jn1uiuln9u-.png?fit=around|585:345&amp;crop=585:345;*,*&amp;output-format=jpg&amp;output-quality=80"
										data-error="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80"
										style="display: block; background-image: url(&quot;https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/wy9jn1uiuln9u-.png?fit=around|585:345&amp;crop=585:345;*,*&amp;output-format=jpg&amp;output-quality=80&quot;);">
									</div>

									<figcaption>
										<strong class="title">ASDASD</strong>

										<p class="hash">부산 가야하는 이유: BTS 그리고 떡볶이</p>

										<figure class="editor only-mobile">
											<span class="badge"></span>

											<div class="thumb">
												<img class="center-crop lazy" alt="망고소녀"
													data-original="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/fmsvfia71h84uy.jpg?fit=around|89:89&amp;crop=89:89;*,*&amp;output-format=jpg&amp;output-quality=80"
													data-error="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/jmcmlp180qwkp1jj.png?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80"
													src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/fmsvfia71h84uy.jpg?fit=around|89:89&amp;crop=89:89;*,*&amp;output-format=jpg&amp;output-quality=80"
													style="display: block;">
											</div>

											<figcaption>망고소녀</figcaption>
										</figure>
									</figcaption>

									<figure class="editor only-desktop">
										<span class="badge"></span>

										<div class="thumb">
											<img class="center-crop lazy" alt="망고소녀"
												data-original="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/fmsvfia71h84uy.jpg?fit=around|89:89&amp;crop=89:89;*,*&amp;output-format=jpg&amp;output-quality=80"
												data-error="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/jmcmlp180qwkp1jj.png?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80"
												src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/fmsvfia71h84uy.jpg?fit=around|89:89&amp;crop=89:89;*,*&amp;output-format=jpg&amp;output-quality=80"
												style="display: block;">
										</div>

										<figcaption>망고소녀</figcaption>
									</figure>
								</figure>

								<div class="review-content">
									<figure class="user">
										<figcaption>망고소녀</figcaption>
									</figure>
									<p>방탄소년단의 부산 콘서트 기념, 부산에 가시는 수많은 아미분들을 위해 맛집을 소개합니다. 부산 떡볶이
										맛집 8곳으로 고고!</p>
								</div>
						</a></li>
					</ul>
				</div>
			</section>
		</article>
	</main>
	<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%"
		height="738px" scrolling="no" frameborder=0></iframe>


</body>
</html>







