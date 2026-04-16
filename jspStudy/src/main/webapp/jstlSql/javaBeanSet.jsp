<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>javaBeanSet</title>
</head>
<body>
<%--자바빈 생성 --%>

<jsp:useBean id="bean0" class="jspStudy.JavaBean" scope="requset">
	<jsp:setProperty name="bean0" property="userId" value="1"/>
	<jsp:setProperty name="bean0" property="userPw" value="1111"/>
	<jsp:setProperty name="bean0" property="title" value="제목1"/>
	<jsp:setProperty name="bean0" property="content" value="내용1"/>
</jsp:useBean>

<jsp:forward page="javaBeanGet.jsp"/>

	
</body>
</html>