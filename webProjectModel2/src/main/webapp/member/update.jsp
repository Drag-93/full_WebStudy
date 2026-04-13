<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>join</title>
</head>
<body>
<%@include file="/common/header.jsp" %>
	<div class="update">
		<div class="update-con">
			<div class="update-form">
			<h1>정보수정페이지</h1>
			<form action="update.member" method="POST">
				<ul>
					<li>
						<label for="memberId">아이디</label>
						<input type="text" name="memberId" id="memberId" />
					</li>
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
					<li>
						<label for="role">권한</label>
						<input type="text" name="role" id="role" />
					</li>
					<li><input type="submit" value="회원정보 수정" /></li>
					<li><a href="<%=request.getContextPath()%>/">HOME</a></li>
					<a href="<%=request.getContextPath()%>/select.member">회원목록</a>
				</ul>
			</form>
			</div>
		</div>
	</div>
	</div>
</body>
</html>