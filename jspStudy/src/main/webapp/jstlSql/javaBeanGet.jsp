<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="bean2" class="jspStudy.JavaBean" scope="request"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>javaBeanGet</title>
</head>
<body>

	아이디: <%=bean2.getUserId() %>
	비밀번호: <%=bean2.getUserPw() %>
	제목: <%=bean2.getTitle() %>
	내용: <%=bean2.getContent() %>

<hr />
	아이디:<jsp:getProperty property="userId" name="bean2"/> 	<br />
	아이디:<jsp:getProperty property="userPw" name="bean2"/>	<br />
	아이디:<jsp:getProperty property="title" name="bean2"/>	<br />
	아이디:<jsp:getProperty property="content" name="bean2"/>	<br />





</body>
</html>