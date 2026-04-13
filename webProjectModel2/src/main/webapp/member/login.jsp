<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet" href="css/login.css" />
</head>
<body>
<%@include file="/common/header.jsp" %>
<div class="login">
	<div class="login-con">
	<div class="login-form">
		<h1>LOGIN</h1>
					<form action="login.member" method="POST">
				<ul>
					<li>
						<label for="userEmail">이메일</label>
						<input type="email" name="userEmail" id="userEmail" />
					</li>
					<li>
						<label for="userPw">비밀번호</label>
						<input type="password" name="userPw" id="userPw" />
					</li>

					<li><input type="submit" value="회원가입" /></li>
					<li><a href="<%=request.getContextPath()%>/">HOME</a></li>
					<a href="<%=request.getContextPath()%>/loginView.member">LOGIN</a>
					<a href="<%=request.getContextPath()%>/select.member">회원목록</a>
				</ul>
			</form>
	</div>
	</div>
</div>
<div class="footer">footer</div>
</body>
</html>