<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식당 상세페이지</title>
<style>
	.restaurant_top div {
		width : 100%;
		height : 340px;
		background-color : red;
		margin-bottom : 6px;
	}
	
	.restaurant_left div {
		width : 80%;
		height : 4432px;
		background-color : blue;
		float : left;
		display : inline-block;
	}
	.restaurant_right div {
		width : 20%;
		height : 4432px;
		background-color : yellow;
		display : inline-block;
	}
	
	.haha {
		width : 100%;
		margin : auto;
	/* 	border : 1px solid black; */
	}
	
	.restaurant_left div.restaurant_content {
		border : 1px solid black;
		width : 800px;
		background-color : white;
		margin : auto;
	}
	
</style>
</head>
<body>
<!-- header -->
<iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe>

<!-- content -->
<section class="restaurant_top">
	<div></div>
</section>
<section class="haha">
	<article class="restaurant_left">
		<div class="restaurant_content">
		</div>
	</article>
	<article class="restaurant_right">
		<div></div>
	</article>
</section>

</body>
<!-- footer Include -->
   <iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>	
</html>