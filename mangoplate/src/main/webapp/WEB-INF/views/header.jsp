<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
</head>
<body onunload="" ng-app="mp20App" class="ng-scope">
	<!---------------------------------------------->
	<!--------------- Header ----------------------->
	<!---------------------------------------------->
	<header class="Header " data-page="normal">

		<a href="http://localhost:9000/mangoplate/index.do"
			class="Header__Logo" onclick="trackEvent('CLICK_HEADER_LOGO');"
			target=_parent> <i class="Header__LogoIcon"></i>
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

			<li class="Header__MenuItem"><a
				href="http://localhost:9000/mangoplate/boardstory_list.do"
				class="Header__MenuLink" onclick="trackEvent('CLICK_MANGO_PICK')"
				target="_parent"> <span class="Header__MenuText">망고 스토리</span>
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
</body>
</html>