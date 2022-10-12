<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고스토리 content</title>
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/mangostory_content.css">
</head>
<body onunload="" class="StoryDetailBody">
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mangoplate/header.do" width="100%"
		height="61px" scrolling="no" frameborder=0></iframe>

	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<main class="Story">
		<div class="Story__BaseInfoContainer">
			<header class="StoryHeader"
				style="background-image: url('https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/jinf88_y1yyjfo.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80')">
				<div class="StoryContent__Source StoryContent__Source--Header">
					<span class="StoryContent__SourceText"></span>
				</div>

				<div class="StoryHeader__Deem only-mobile">
					<div class="StoryHeader__ActiveButtons">
						<button
							class="StoryHeader__ActiveButton StoryHeader__BookmarkButton ">
							<i class="StoryHeader__BookmarkButtonIcon"></i>
						</button>
						<button class="StoryHeader__ActiveButton StoryHeader__ShareButton">
							<i class="StoryHeader__ShareButtonIcon"></i>
						</button>
					</div>
				</div>


				<div class="StoryHeader__Info DateAndView only-mobile">
					<span class="DateAndView__Time">2022-09-27</span> <span
						class="DateAndView__ViewCountWrap"> <i
						class="DateAndView__ViewCountIcon"></i> <span
						class="DateAndView__ViewCount">268</span>
					</span>
				</div>
			</header>

			<section class="Story__BaseInfo">

				<div class="StoryHeader__ActiveButtons only-desktop">
					<button
						class="StoryHeader__ActiveButton StoryHeader__BookmarkButton ">
						<i class="StoryHeader__BookmarkButtonIcon"></i>
					</button>
					<button class="StoryHeader__ActiveButton StoryHeader__ShareButton">
						<i class="StoryHeader__ShareButtonIcon"></i>
					</button>
				</div>

				<i class="Story__Icon only-mobile"></i>
				<div class="StoryEditor">
					<i class="StoryEditor__EditorMark"></i> <span
						class="StoryEditor__EditorName">배망고</span>
				</div>

				<h1 class="Story__Title">남한산성의 건강한 맛집 5곳</h1>
				<p class="Story__Description">건강하고 맛도 좋은 그런 맛집!</p>

				<div class="DateAndView only-desktop">
					<span class="DateAndView__Time">2022-09-27</span> <span
						class="DateAndView__ViewCountWrap"> <i
						class="DateAndView__ViewCountIcon"></i> <span
						class="DateAndView__ViewCount">268</span>
					</span>
				</div>


			</section>
		</div>

		<div class="Story__ContentContainer">
			<div class="Story__ContentList">
				<div class="Story__Content Story__CardContent StoryContent">
					<div class="StoryContent__PictureWrap">
						<img src="https://media.giphy.com/media/118p3q768COZhu/giphy.gif"
							alt=" 사진" class="StoryContent__Picture">

						<div class="StoryContent__Source">
							<a href="GIPHY.COM"
								onclick="trackEvent('CLICK_AFFILIATE_LINK', {&quot;url&quot;:&quot;GIPHY.COM&quot;})"
								class="StoryContent__SourceLink"> <span
								class="StoryContent__SourceText">GIPHY.COM</span>
							</a>
						</div>
					</div>
					<section
						class="Story__Content Story__RestaurantContent StoryRestaurantContent"
						data-key="3Bs8ZNgdzo">
						<a class="StoryRestaurantContent__Link"
							href="/restaurants/3Bs8ZNgdzo"> <span
							class="StoryRestaurantContent__Metro">광주시</span>
							<h2 class="StoryRestaurantContent__RestaurantNameWrap">
								<span class="StoryRestaurantContent__RestaurantName ">남한산성
									건강한밥상</span>
								<button class="StoryRestaurantContent__RestaurantInfoButton">
									<i class="StoryRestaurantContent__RestaurantInfoButtonIcon"></i>
								</button>
							</h2>
						</a>
					</section>
					<div class="Story__Content Story__CardContent StoryContent">
						<div class="StoryContent__PictureWrap">
							<img
								src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/o9qjtiu8ochpdk.jfif?fit=around|600:*&amp;crop=600:*;*,*&amp;output-format=jpg&amp;output-quality=80"
								alt=" 사진" class="StoryContent__Picture">

							<div class="StoryContent__Source">
								<span class="StoryContent__SourceText">Mangoaplate
									@Hynorii</span>
							</div>
						</div>

						<p class="StoryContent__Caption">
							맛있는&nbsp;보양식을&nbsp;즐길&nbsp;수&nbsp;있는&nbsp;&lt;남한산성&nbsp;건강한밥상&gt;입니다.&nbsp;
							<br> <br>추천&nbsp;메뉴로는&nbsp;누룽지엄나무&nbsp;오리백숙이&nbsp;있는데요.&nbsp;엄나무를&nbsp;비롯해&nbsp;부추와&nbsp;버섯&nbsp;등&nbsp;다양한&nbsp;야채가&nbsp;들어가&nbsp;향긋하면서도&nbsp;아주&nbsp;맑고&nbsp;깨끗한&nbsp;국물이&nbsp;특징이죠.&nbsp;여기에&nbsp;오리고기&nbsp;특유의&nbsp;담백하면서도&nbsp;깊은&nbsp;풍미까지&nbsp;더해져&nbsp;묘한&nbsp;매력을&nbsp;지닌&nbsp;국물입니다.&nbsp;오리고기는&nbsp;퀄리티가&nbsp;좋아&nbsp;촉촉하고&nbsp;야들야들하죠.
						</p>
					</div>

					<p class="StoryContent__Caption">오늘은&nbsp;남한산성&nbsp;근처의&nbsp;건강한&nbsp;맛집&nbsp;5곳을&nbsp;준비해보았습니다.&nbsp;함께&nbsp;보시죠!</p>
				</div>
			</div>
		</div>
	</main>

	<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%"
		height="738px" scrolling="no" frameborder=0></iframe>

</body>

</html>







