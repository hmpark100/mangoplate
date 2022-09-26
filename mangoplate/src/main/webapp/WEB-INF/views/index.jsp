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
	<!-- Header Include -->
	<iframe src="header.do" width="100%" height="61px" scrolling="no"
		frameborder=0></iframe>
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->

	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="738px" scrolling="no"
		frameborder=0></iframe>
</body>
</html>







