<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
if (session.getAttribute("sessionId") != null) {
%>
<script>
		alert("로그아웃후에 이용할 수 있습니다")
		location.href="<%=request.getContextPath()%>/";
</script>
<%
}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
<link rel="stylesheet" href="css/join.css" />
</head>
<body>
<%@include file="/common/header.jsp" %>
	<div class="join">
		<div class="join-con">
			<div class="join-form">
			<h1>회원가입페이지</h1>
			<form action="insert.member" method="POST">
				<ul>
					<li>
						<label for="userEmail">이메일</label>
						<input type="email" name="userEmail" id="userEmail" />
					</li>
					<li>
						<label for="userPw">비밀번호</label>
						<input type="password" name="userPw" id="userPw" />
					</li>
					<li>
						<label for="userName">이름</label>
						<input type="text" name="userName" id="userName" />
					</li>
					<li>
						<label for="age">나이</label>
						<input type="text" name="age" id="age" />
					</li>
					<li><input type="submit" value="회원가입" /></li>
					<li><a href="<%=request.getContextPath()%>/">HOME</a></li>
					<a href="<%=request.getContextPath()%>/loginView.member">LOGIN</a>
					<a href="<%=request.getContextPath()%>/select.member">회원목록</a>
				</ul>
			</form>
			</div>
		</div>
	</div>
	<%@ include file="/common/footer.jsp"%>
</body>
</html>