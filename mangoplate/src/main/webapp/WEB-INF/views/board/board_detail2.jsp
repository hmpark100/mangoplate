<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식당 상세페이지</title>
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/mangoplate1.css">
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/am-pagination.css">
</head>
<body>
	<!-- header -->
	<iframe src="header.do" width="100%" height="61px" scrolling="no"
		frameborder=0></iframe>

	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<main class="pg-restaurant have-share-sns-another ng-scope"
		ng-controller="mp20_restaurant_controller"
		data-restaurant_key="sRFQZbq3nK1c" data-restaurant_name="마타렐로"
		data-metro_str="인천 연수구" data-subcuisine_code_str="브런치 / 버거 / 샌드위치"
		data-price_code_str="만원-2만원" data-parking_code_str=""
		data-review_count="5">
		<article class="contents">
			<div class="column-wrapper">
				<div class="column-contents">
					<div class="inner">
						<section class="restaurant-detail">
							<header>
								<div class="restaurant_title_wrap">
									<span class="title">
										<h1 class="restaurant_name">마타렐로</h1> <strong
										class="rate-point expected"> <span>4.3</span>
									</strong>

										<p class="branch"></p>
									</span>

									<div class="restaurant_action_button_wrap">

										<button class="review_writing_button"
											data-restaurant_key="sRFQZbq3nK1c">
											<i class="review_writing_button_icon"></i> <span
												class="review_writing_button_text">리뷰쓰기</span>
										</button>

										<div class="wannago_wrap">
											<button class="btn-type-icon favorite wannago_btn "
												data-restaurant_uuid="483863" data-action_id=""></button>
											<p class="wannago_txt">가고싶다</p>
										</div>
									</div>
								</div>

								<div
									class="status
                branch_none
                ">
									<span class="cnt hit">2,433</span> <span class="cnt review">5</span>
									<span class="cnt favorite">120</span>
								</div>
							</header>


							<section class="restaurant_introduce_section_mobile only-mobile">
								<div class="RestaurantIntroduceSection">


									<div
										class="RestaurantIntroduceSection__Section CardSlider EatDealFadeSliderSection">
										<div class="SectionLabel SectionLabel--Mint">
											<h3 class="SectionLabel__Label">EAT딜</h3>
										</div>

										<div class="EatDealFadeSliderSection__Content">
											<section class="EatDealIntroduce">
												<i class="EatDealIntroduce__SignatureIcon"></i>
												<h3 class="EatDealIntroduce__Title">EAT딜</h3>
												<p class="EatDealIntroduce__Description">
													할인된 가격으로<br>인기 메뉴를<br>맛볼 수 있는 기회!
												</p>
											</section>

											<div class="SectionTitle">
												<span class="SectionTitle__Title">할인된 가격으로 인기 메뉴를 맛볼
													수 있는 기회!</span><span class="SectionTitle__Description">(모바일
													앱에서 사용할 수 있습니다. )</span>
											</div>

											<div class="CardSlider__Slider EatDealFadeSlider">
												<section class="EatDealCard EatDealCard--Placeholder">
													<div class="EatDealCard__Wrapper">
														<div class="EatDealCard__Picture"></div>

														<div class="EatDealCard__InfoWrap">
															<h3 class="EatDealCard__Title"></h3>
															<div class="EatDealCard__PriceWrap"></div>
														</div>
													</div>
												</section>
												<section class="EatDealCard EatDealCard--Placeholder">
													<div class="EatDealCard__Wrapper">
														<div class="EatDealCard__Picture"></div>

														<div class="EatDealCard__InfoWrap">
															<h3 class="EatDealCard__Title"></h3>
															<div class="EatDealCard__PriceWrap"></div>
														</div>
													</div>
												</section>
											</div>
										</div>
									</div>


								</div>

							</section>


							<ul class="Restaurant__InfoList only-mobile">
								<li class="Restaurant__InfoItem">
									<div class="Restaurant__InfoItemMapContainer"></div>
									<div class="Restaurant__InfoItemLabel">
										<div class="Restaurant__InfoItemLabel--RoadAddressText">인천광역시
											연수구 아트센터대로 203</div>
										<div class="Restaurant__InfoItemLabel--Address">
											<span class="Restaurant__InfoAddress--Rectangle">지번</span> <span
												class="Restaurant__InfoAddress--Text">인천시 연수구 송도동 83</span>
										</div>

									</div>
								</li>

								<li class="Restaurant__InfoItem"><a
									href="tel:0507-1425-3556">
										<div class="Restaurant__InfoItemLabel">0507-1425-3556</div>
								</a></li>
							</ul>

							<!-- 상세 정보 -->
							<table class="info
              no_menu
              ">
								<caption>레스토랑 상세 정보</caption>

								<tbody>
									<tr class="only-desktop">
										<th>주소</th>
										<td>인천광역시 연수구 아트센터대로 203<br> <span
											class="Restaurant__InfoAddress--Rectangle">지번</span> <span
											class="Restaurant__InfoAddress--Text">인천시 연수구 송도동 83</span>
										</td>
									</tr>

									<tr class="only-desktop">
										<th>전화번호</th>
										<td>0507-1425-3556</td>
									</tr>

									<tr>
										<th>음식 종류</th>
										<td><span>브런치 / 버거 / 샌드위치</span></td>
									</tr>

									<tr>
										<th>가격대</th>
										<td>만원-2만원</td>
									</tr>
									<tr>
										<th>웹 사이트</th>
										<td><a href="http://www.instagram.com/mattarello_songdo"
											class="under_line" target="_blank" style="color: black;"
											onclick="trackEvent('CLICK_RESTO_WEBSITE', {&quot;restaurant_key&quot;:&quot;sRFQZbq3nK1c&quot;})">
												식당 홈페이지로 가기 </a></td>
									</tr>


								</tbody>
							</table>

							<p class="update_date">업데이트 : 2022. 4. 4</p>

							<div id="reviewListFocusId"></div>
						</section>
					</div>
				</div>
			</div>
		</article>
	</main>
</body>
<!-- footer Include -->
<iframe src="footer.do" width="100%" height="738px" scrolling="no"
	frameborder=0></iframe>
</html>