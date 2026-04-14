<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setAttribute("age",30);
    request.setAttribute("userId","m1");
    request.setAttribute("score",90);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연산자 실습</title>
</head>
<body>
	<div>
		${age },${userId },${score }
	</div>
	<h2>1.관계 연산자</h2>
	<table border="1">
		<tr>
		<th>비교내용</th>
		<th>EL 표현식</th>
		<th>결과</th>
		</tr>
	<tr>
	<td>나이가 20세인가?(==)</td>
	<td>\${age eq 20}</td>
	<td>${age eq 20}</td>
	</tr>
	<tr>
	<td>나이가 20세 이상인가?(>=)</td>
	<td>\${age ge 20}</td>
	<td>${age ge 20 }</td>
	</tr>
	<tr>
	<td>점수가 100점이 아닌가?(!=)</td>
	<td>\${score ne 100}</td>
	<td>${score ne 100}</td>
	</tr>
	<tr>
	<td>점수가 90점보다 작은가?(<)</td>
	<td>\${score lt 90}</td>
	<td>${score lt 90}</td>
	</tr>	
	
	</table>
	
	<h2>2. 논리 연산자</h2>
	<ul>
		<li>
			<b>AND {&&}: </b> 나이가 20세 이상이고 아이디가 m1인가? <br />
			\${age >= 20 and userId=='m1'} :
			<b>${age >= 20 and userId=='m1' }</b>
		</li>
		<li>
			<b>OR {||}: </b> 점수가 90점 이상이거나 나이가 30세 이상인가? <br />
			\${age >= 30  or score>=90} :
			<b>${age >= 30 or score>=90 }</b>
		</li>
		<li>
			<b>NOT {!}: </b> 현재 로그인한 아이디가 'guest'가 아닌가? <br />
			\${not (userId=='guest')} :
			<b>${not (userId=='guest')}</b>
		</li>
	</ul>
	
	
	
	
	
	
</body>
</html>