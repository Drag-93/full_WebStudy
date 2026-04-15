<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	//로그인 성공시 세션생성
						//name    value
	session.setAttribute("jsp0414", "1111"); // 30분
	session.setAttribute("sessionId1", 1111); // 30분
	session.setAttribute("sessionId2", 1234); // 30분
	// 세션유지시간		
	 session.setMaxInactiveInterval(60*30);
	
	%>



	<a href="sessionget.jsp">session get</a>

</body>
</html>