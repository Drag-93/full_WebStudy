<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formatting</title>
</head>
<body>

숫자1 : <fmt:formatNumber value="123456789" type="number"/><br />
숫자2 : <fmt:formatNumber value="1000000" type="currency" currencySymbol="￦"/><br />
숫자3 : <fmt:formatNumber value="0.44" type="percent"/><br />
숫자4 : <fmt:formatNumber value="12345.6789" pattern=".0"/><br />


<h3>timeZone</h3>
시스템 시간 : <c:set var="now" value="<%=new Date() %>"/><br />
서울 오늘 날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="full"/><br />
<fmt:timeZone value="America/New_York">
	뉴욕 오늘 날짜: <fmt:formatDate value="${now }" type="both" timeStyle="full" /><br />
</fmt:timeZone>
<fmt:timeZone value="Europe/London">
	런던 오늘 날짜: <fmt:formatDate value="${now }" type="both" timeStyle="full" dateStyle="full"/><br />
</fmt:timeZone>

<h3>날짜</h3>
<fmt:formatDate value="${now }" pattern="yyyy-mm-dd HH:mm:ss"/><br />
시간 : <fmt:formatDate value="${now }" type="time"/>
날짜 : <fmt:formatDate value="${now }" type="date"/>
시간+날짜 : <fmt:formatDate value="${now }" type="both"/>
<hr />
<h3>short</h3>
오늘 날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="short"/><br />
오늘 날짜 : <fmt:formatDate value="${now }" type="both" timeStyle="short"/><br />
오늘 날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="short" timeStyle="short"/><br />
<h3>medium</h3>
오늘 날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="medium"/><br />
오늘 날짜 : <fmt:formatDate value="${now }" type="both" timeStyle="medium"/><br />
오늘 날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="medium" timeStyle="medium"/><br />
<h3>full</h3>
오늘 날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="full"/><br />
오늘 날짜 : <fmt:formatDate value="${now }" type="both" timeStyle="full"/><br />
오늘 날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/><br />
<h3>사용자</h3>
오늘 날짜 : <fmt:formatDate value="${now }" pattern="yyyy-MM-dd"/><br />
오늘 날짜 : <fmt:formatDate value="${now }" pattern="yyyy/MM/dd"/><br />
오늘 날짜 : <fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일"/><br />
오늘 날짜 : <fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss"/><br />




</body>
</html>