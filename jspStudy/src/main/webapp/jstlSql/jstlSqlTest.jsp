<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlSqlTest.jsp</title>
</head>

<body>
	<c:if test = "${(not empty param.userEmail) and (not empty param.userPw ) and (not empty param.name) and (not empty param.age)}">

		<sql:query var="emailCheck" dataSource="jdbc/mysqlDB">
			select count(*) as cnt from member_tb2 where user_email=?
			<sql:param value="${param.userEmail}"/>
		</sql:query>

	<c:choose>
		<c:when test="${emailCheck.rows[0].cnt==0 }">
			<sql:update var="insert" dataSource="jdbc/mysqlDB">
			insert into member_tb2 (user_email,user_pw,user_name,age,role) values(?,?,?,?,?)
			<sql:param value="${param.userEmail}"/>
			<sql:param value="${param.userPw}"/>
			<sql:param value="${param.name}"/>
			<sql:param value="${param.age}"/>
			<sql:param value="MEMBER"/>
		</sql:update>
		</c:when>
		<c:when test="${emailCheck.rows[0].cnt!=0 }">
		<p style="color:red;">이미 가입된 회원</p>
		</c:when>
	</c:choose>
	</c:if>
	<sql:query dataSource="jdbc/mysqlDB" var="memberList">
		select * from member_tb2;
	</sql:query>

	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이메일</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>나이</th>	
			<th>권한</th>
			<th>보기</th>
		</tr>

		<c:forEach var="member" items="${memberList.rows }" varStatus="status">
			<tr>
				<td>${member.member_id}</td>
				<td>${member.user_email}</td>
				<td>${member.user_pw}</td>
				<td>${member.user_name}</td>
				<td>${member.age}</td>
				<td>${member.role}</td>
				<td><a href="detail.jsp?memberId=${member.member_id}">보기</a></td>
			</tr>
		</c:forEach>
	</table>





</body>
</html>