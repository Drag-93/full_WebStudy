<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request</title>
</head>
<body>
<%--Model1, Controller JSP담당 --%>
<form action="request_JoinOk.jsp" method="POST">
	이름: <input type="text" name="name" id= "name" size="10" /><br />
	나이: <input type="text" name="age" id= "age" size="3" /><br />
	성별: 
	<input type="radio" name="gender" value= "남자"/> 남자
	<input type="radio" name="gender" value= "여자"/> 여자
	<br />
	취미
	<input type="checkbox" name="hobby" value= "독서"/> 독서
	<input type="checkbox" name="hobby" value= "축구"/> 축구
	<input type="checkbox" name="hobby" value= "쇼핑"/> 쇼핑
	<br />
	<input type="submit" value="회원가입" />






</form>




</body>
</html>