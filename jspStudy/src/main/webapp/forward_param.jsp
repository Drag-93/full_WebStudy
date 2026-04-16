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
		//name이 id인 value
		String id=request.getParameter("id");
		//name이 pw인 value
		String pw=request.getParameter("pw");
	%>
		<h1>forward_param.jsp 입니다</h1>
		아이디: <%=id%> <br />
		비밀번호: <%=pw%> <br />
	
	
</body>
</html>