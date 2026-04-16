<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward.jsp</title>
</head>
<body>

	<jsp:forward page="forward_param.jsp">
		<jsp:param value="root" name="id"/>
		<jsp:param value="1111" name="pw"/>
	</jsp:forward>



</body>
</html>