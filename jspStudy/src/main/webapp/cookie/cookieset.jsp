<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieset.jsp</title>
</head>
<body>

	<%                               //쿠키name,쿠키value
		Cookie cookie = new Cookie("jsp0414","1111");
		cookie.setMaxAge(60*60);    //1시간 = 60초*60
		response.addCookie(cookie);  //공유
	%>

	<a href="cookieget.jsp">cookie get</a>

</body>
</html>