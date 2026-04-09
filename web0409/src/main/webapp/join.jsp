<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
</head>
<body>
<h1>회원가입페이지</h1>
<form action="insert.member" method="POST">
	<label for="userEmail">이메일</label>
	<input type="email" name="userEmail" id="userEmail" /> <br />
	
	<label for="userName">이름</label>
	<input type="text" name="userName" id="userName" /> <br />
	
	<label for="age">나이</label>
	<input type="text" name="age" id="age" /> <br />
	
	<input type="submit" value="회원가입GO" />
</form>

<a href="<%=request.getContextPath()%>/">HOME</a>
<a href="<%=request.getContextPath()%>/select.member">회원목록</a>



</body>
</html>