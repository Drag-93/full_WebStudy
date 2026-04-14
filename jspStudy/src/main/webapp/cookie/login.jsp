<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>

	<h3>아이디 : jsp0414, 비밀번호 : 1111</h3>
	
	<form action="loginOk.jsp" method="post">
		아이디 : 
		<input type="text" name="id" size="10" /><br />
		비밀번호
		<input type="password" name="pw" isze="10" /><br />
		<input type="submit" value= "로그인" />
	
	
	</form>



</body>
</html>