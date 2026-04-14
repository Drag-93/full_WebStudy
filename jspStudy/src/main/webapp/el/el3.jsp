<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    pageContext.setAttribute("msg","페이지 스코프 데이터");//페이지
    request.setAttribute("user","김이름"); // 요청(사용자)
    session.setAttribute("role", "ADMIN"); //로그인, 인증
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 내장 객체 실습</title>
</head>
<body>
	<h2>1. Scope 객체 접근</h2>
	<table>
	<tr>
	<th>대상</th>
	<th>EL 표현식</th>
	<th>결과</th>
	</tr>
	<tr>
	<td>Page Scope</td>
	<td>\${pageScope.msg}</td>
	<td>${pageScope.msg}</td>
	</tr>
	<tr>	
	<td>Request Scope</td>
	<td>\${requestScope.user}</td>
	<td>${requestScope.user}</td>
	</tr>
	<tr>	
	<td>Session Scope</td>
	<td>\${sessionScope.role}</td>
	<td>${sessionScope.role}</td>
	</tr>	
	</table>
	
	<h2>2. 요청 파라미터 (param)</h2>
	<p>URL 뒤에 ?name=김이름&age=50 작성 후 실행</p>
	<ul>
		<li>이름 : ${param.name }</li>
		<li>나이 : ${param.age}</li>
	</ul>
	<h2>3. 쿠키 및 헤더 정보</h2>
	<ul>
		<li>JSESSIONID 쿠키 값 : ${cookie.JSESSIONID.value } </li>
		<li>호스트 정보 : ${header["host"]}</li>
		<li>사용자 브라우저 : ${header["user-agent"]}</li>
	</ul>
	<h2>4.pageContext 활용 -> 페이지에 유효</h2>
	<p>JSP의 내장객체인 pageContext를 통해 프로젝트의 COnstext Path 등을 가져올 때 자주 사용</p>
	<ul>
	<li>프로젝트 컨텍스트 경로 : <b>${pageContext.request.contextPath }</b></li>
	<li>HTTP 메서드 : ${pageContext.request.method }</li>
	<li>세션 ID : ${pageContext.session.id }</li>
	</ul>




</body>
</html>