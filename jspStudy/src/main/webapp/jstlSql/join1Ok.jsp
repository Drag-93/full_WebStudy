<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join1Ok.jsp</title>
</head>
<body>
	<%--form의 name값 --%>
	id : <%=request.getParameter("userId") %>,
	pw : <%=request.getParameter("userPw") %> <br />
	
	<%--jstl --%>
	id : ${param.userId },
	pw : ${param.userPw } <br />
	<c:set var="userId" value="${param.userId }"/>
	<c:set var="userPw" value="${param.userPw }"/>
	<%-- &&   and --%>
	<c:if test = "${(userId eq 'm1') and (userPw eq '11')}">
		로그인 성공
	</c:if>
	<%--  ||  or  --%>
	<c:if test = "${(userId eq 'm1') or (userPw eq '11')}">
		아이디 또는 비밀번호 일치
	</c:if>
	<%-- <c:if test = "${(not userId eq 'm1') or (!userPw eq '11')}"> --%>
	<c:if test="${not (userId eq 'm1'and userPw eq '11')}">
		아이디나 비빌번호가 일치 하지 않음
	</c:if>
	<<c:if test="${userId ne null }">
		null이 아니다
	</c:if> 
</body>
</html>