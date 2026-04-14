<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieget.jsp</title>
</head>
<body>
	<%
	Cookie[]cookies = request.getCookies();
	
	for (int i=0; i<cookies.length; i++){
		//쿠키배열에서  쿠키  이름  get
		String str = cookies[i].getName();
		
		if(str.equals("jsp0414")){
			out.println("cookies[" + i + "] name : "+ cookies[i].getName()+"<br/>");
			out.println("cookies[" + i + "] value : "+ cookies[i].getValue()+"<br/>");
			out.println("=====================<br/>");
		}
		
	}
	%>
	<a href="cookiedel.jsp">cookie delete</a>
	
</body>
</html>