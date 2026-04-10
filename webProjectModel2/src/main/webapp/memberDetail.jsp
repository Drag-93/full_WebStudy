<%@page import="org.web.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    MemberDto memberDto = (MemberDto)request.getAttribute("member");
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원상세보기</title>
</head>
<body>
<div class="header">
	<div class="nav">
	<h1 class="logo">HOME</h1>
		<div class="gnb">
			<ul>
				<li><a href="select.member">회원목록</a></li>
				<li><a href="#">게시판</a></li>
				<li><a href="#">상품목록</a></li>
				<li><a href="joinView.member">회원가입</a></li>
			</ul>
		</div>
	</div>
</div>
	<div class="member-detail">
		<div class="member-detail-con">
			<div class="member-detail-form">
			<h1><%=memberDto.getUserName() %>님 회원정보</h1>
			<ul>
				<form action="update.member"method ="POST">
				<li>
					<label for="memberId">회원아이디</label>
					<input type="text" name="memberId" id="memberId" value="<%=memberDto.getMemberId() %>" readOnly/>
				</li>
				
				
				
				
				</form>
			</ul>
			</div>
		</div>
	</div>
</body>
</html>