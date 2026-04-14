<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 객체</title>
</head>
<body>

	<%
	out.println("클라이언트 IP: "+ request.getRemoteAddr()+"<br/ >") ;
	out.println("요청정보길이: " +request.getContentLength()+"<br/ >");
	out.println("요청정보인코딩: " +request.getCharacterEncoding()+"<br/ >"); 
	out.println("요청정보 컨텐츠타입:  " +request.getContentType()+"<br/ >"); 
	out.println("요청방식 : "+request.getMethod()+"<br/ >"); 
	out.println("프로토콜 : "+request.getProtocol()+"<br/ >");
	out.println("URI : "+request.getRequestURI()+"<br/ >");
	out.println("컨텍스트 경로 : "+request.getContextPath()+"<br/ >");
	out.println("URL : "+request.getRequestURL()+"<br/ >");
	out.println("서버이름 : "+request.getServerName()+"<br/ >");
	out.println("포트 번호 : "+request.getServerPort()+"<br/ >");
	%>
	<br />
	<%
	out.println(request.getCookies()+"<br/ >");
	out.println(request.getSession()+"<br/ >");
	out.println(request.getQueryString()+"<br/ >");
	out.println(request.getHeader("referer")+"<br/ >");
	out.println(request.getHeader("User-Agent")+"<br/ >");
	out.println(request.getHeader("host")+"<br/ >"); // 접속ip
	out.println(request.getHeader("WL-Proxy-Client-IP")+"<br/ >");
	out.println(request.getHeader("Proxy-Client-IP")+"<br/ >");
	out.println(request.getHeader("X-Forwarded-For")+"<br/ >");

					
					
	%>

</body>
</html>