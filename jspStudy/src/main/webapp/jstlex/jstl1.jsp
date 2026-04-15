<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<%
//String name="java";
%>	
	<%--변수 선언 --%>
	<c:set var="name" value="java"/>
	<c:set var="name2" value="spring"/>
	<%
	//out.println("name <br>")
	%>
	<%--get --%>
	name:<c:out value="name"/>
	<br />name:<c:out value="${name}"/>
	<br />
	
	<%--변수 삭제 --%>
	<c:remove var="name2"/>
	<br />name2: <c:out value="${name2}"/>
	<br />
	<%--forEach --%>
	<h3>forEach</h3>
	<c:forEach var="i" begin="1" end="10" step="1">
		${i}&nbsp;
	</c:forEach><br />
	<!-- 1~10까지의 합 구하기 -->
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:set var="sum" value="${sum+i}"></c:set>
	</c:forEach>
	-- 1~10까지의 합=${sum}<br />
	
	<!-- 10 9 8 7 6 5 4 3 2 1 출력하기 -->
	<c:forEach var="i" begin="0" end="9" step="1">
		${10-i}&nbsp;
	</c:forEach><br />
	
	<h3>**구분자(기호)를 이용해서 문자열 분리**</h3>
	<c:out value="java,spring,oracle,security,jpa"/><br />
	<c:forTokens var="backend" items="java,spring,oracle,security,jpa" delims=",">
		${backend}&nbsp;
	</c:forTokens>
	<%
		List<String> lists = new ArrayList<>();
		lists.add("java");
		lists.add("spring");
		lists.add("oracle");
		lists.add("security");
		lists.add("jpa");
		
		request.setAttribute("lists",lists);
	%>
	<c:forEach var="list" items="${lists}">
		${list}<br />
	</c:forEach>
	
	
	
	
	
</body>
</html>