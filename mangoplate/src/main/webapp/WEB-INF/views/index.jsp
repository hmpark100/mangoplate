<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MANGOPLATE</title>
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script>
	let login_result = '${login_result}';
	let logout_result = '${logout_result}';

	if (logout_result == 'ok') {
		alert("로그아웃에 성공하셨습니다.");
	}

	if (login_result == 'ok') {
		alert("로그인에 성공하셨습니다.");
	}
</script>

</head>
<body>
	<main class="pg-main">
		<header class="main-header"
			style="background-image: url('https://mp-seoul-image-production-s3.mangoplate.com/a4283e5725fb56755b9bbeb8f285d0dc.jpg');">
			<div>
				<p class="title">솔직한 리뷰, 믿을 수 있는 평점!</p>
				<h1 class="title">망고플레이트</h1>
				<p class="options">
					<a href="#">Download app</a> <a href="#">add/Claim restaurant</a> <a
						href="#">Become a holic</a>
				</p>

				<fieldset class="main-search">
					<legend>전체 검색</legend>

					<label class="search-word" for="main-search"> <span
						class="icon">검색 :</span> <input id="main-search"
						class="HomeSearchInput" name="main-search" type="text"
						maxlength="50" placeholder="지역, 식당 또는 음식" autocomplete="off"
						onclick="trackEvent('CLICK_SEARCH_MAIN')"> <span
						class="clear_btn">CLEAR</span>
					</label> <input class="btn-search" type="submit" value="검색"
						onclick="trackEvent('CLICK_KEYWORD_SEARCH');">
				</fieldset>

				<aside class="shortcut-app type-main">
					<a class="btn inbound only-desktop "
						href="https://www.mangoplate.com/eat_deals"
						onclick="common_ga('PG_MAIN', 'CLICK_SALES_LOCAL')" style=""><img
						src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/nf58dxcb-7ikpwam.png"></a>

					<button class="btn android" data-event_term="V1"
						data-event_name="CLICK_DOWNLOAD_MAIN_ANDROID"
						onclick="trackEvent('CLICK_DOWNLOAD_MAIN_ANDROID');go_to_app_or_market(this, 'android');">
						<img
							src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/bzdlmp2toaxrdjqg.png"
							width="180" alt="android market button">
					</button>

					<button class="btn ios" data-event_term="V1"
						data-event_name="CLICK_DOWNLOAD_MAIN_IOS"
						onclick="trackEvent('CLICK_DOWNLOAD_MAIN_IOS');go_to_app_or_market(this, 'ios');">
						<img
							src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/f7eokfaszt4gpkh6.svg?v=1"
							width="180" alt="app store">
					</button>
				</aside>
			</div>

		</header>
		
	</main>

	<header class="Header Header--Transparent" data-page="home">
		<a href="/" class="Header__Logo"
			onclick="trackEvent('CLICK_HEADER_LOGO');"> <i
			class="Header__LogoIcon"></i>
		</a>

		<div class="Header__SearchBox">
			<i class="Header__SearchIcon"></i> <label
				class="Header__SearchInputWrap"> <input type="text"
				class="Header__SearchInput" placeholder="지역, 식당 또는 음식" value=""
				autocomplete="off" maxlength="50">
			</label>

			<button class="Header__SearchInputClearButton">CLEAR</button>
		</div>

		<ul class="Header__MenuList">
			<li class="Header__MenuItem Header__MenuItem--New"><a
				href="/eat_deals" class="Header__MenuLink"
				onclick="trackEvent('CLICK_EAT_DEALS')"> <span
					class="Header__MenuText">EAT딜</span>
			</a></li>

			<li class="Header__MenuItem"><a href="/top_lists"
				class="Header__MenuLink" onclick="trackEvent('CLICK_TOP_LIST')">
					<span class="Header__MenuText">맛집 리스트</span>
			</a></li>

			<li class="Header__MenuItem"><a href="/mango_picks"
				class="Header__MenuLink" onclick="trackEvent('CLICK_MANGO_PICK')">
					<span class="Header__MenuText">망고 스토리</span>
			</a></li>
		</ul>

		<ul class="Header__IconButtonList">
			<li
				class="Header__IconButtonItem only-mobile Header__IconButtonItem--MenuButton MenuButton--New">
				<button class="MenuButton" onclick="trackEvent('CLICK_MENU');">
					<i class="MenuButton__Icon"></i>
				</button>
			</li>

			<li
				class="Header__IconButtonItem Header__IconButtonItem--UserRestaurantHistory">
				<button class="UserProfileButton"
					onclick="trackEvent('CLICK_PROFILE');">
					<i class="UserProfileButton__Picture"
						style="background-image: url(&quot;https://mp-seoul-image-production-s3.mangoplate.com/web/resources/fljgy-rm4b8v6vni.png&quot;), url(&quot;https://mp-seoul-image-production-s3.mangoplate.com/web/resources/fljgy-rm4b8v6vni.png&quot;);"></i>
					<i class="UserProfileButton__PersonIcon"></i> <span
						class="UserProfileButton__HistoryCount">0</span>
				</button>
			</li>

			<li
				class="Header__IconButtonItem Header__IconButtonItem--CloseButton Header__IconButtonItem--Hide">
				<button class="Header__CloseButton"></button>
			</li>
		</ul>
	</header>


	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->


	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="530px" scrolling="no"
		frameborder=0></iframe>
</body>
</html>







