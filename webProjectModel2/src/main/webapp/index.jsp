<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<link rel="stylesheet" href="css/index.css" />
</head>
<div class="header">
	<div class="nav">
	<h1 class="logo">HOME</h1>
		<div class="gnb">
			<ul>
				<li><a href="select.member">회원목록</a></li>
				<li><a href="#">게시판</a></li>
				<li><a href="#">상품목록</a></li>
				<li><a href="joinView.member">회원가입</a></li>
			</ul>
		</div>
	</div>
</div>
<body>
<div class="index">
<div class="index-con">
	<h1>index</h1>
	<p><%=request.getAttribute("test") %></p>
	
	
</div>
</div>







<div class="footer">footer</div>
</body>
</html>