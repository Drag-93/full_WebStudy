<%@page import="org.web.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    MemberDto memberDto = (MemberDto)request.getAttribute("memberDto");
    %>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원상세보기</title>
<link rel="stylesheet" href="css/memberDetail.css" />
</head>
<body>
<%@include file="/common/header.jsp" %>
	<div class="member-detail">
		<div class="member-detail-con">
			<div class="member-detail-form">
			<c:set var="member" value="${memberDto}"/>
			<h1>${member.userName}님 회원정보</h1>
			<ul>
				<form action="update.member"method ="POST">
				<ul>
					<li>
						<label for="memberId">아이디</label>
						<input type="text" name="memberId" id="memberId"
						value = "${member.memberId}" readOnly/>
					</li>
					<li>
						<label for="userEmail">이메일</label>
						<input type="email" name="userEmail" id="userEmail" 
						value = "${member.userEmail}"/>
					</li>
					<li>
						<label for="userPw">비밀번호</label>
						<input type="password" name="userPw" id="userPw" 
						value = "${member.userPw}"/>
					</li>
					<li>
						<label for="userName">이름</label>
						<input type="text" name="userName" id="userName" 
						value = "${member.userName}"/>
					</li>
					<li>
						<label for="age">나이</label>
						<input type="text" name="age" id="age" 
						value = "${member.age}"/>
					</li>
					<li>
						<label for="role">권한</label>
						<input type="text" name="role" id="role" 
						value = "${member.role}" readOnly/>
					</li>
					<li>
						<label for="createTime">createTime</label>
						<input type="text" name="createTime" id="createTime" 
						value = "${member.createTime}>" readOnly/>
					</li>
					<li>
						<label for="updateTime">updateTime</label>
						<input type="text" name="updateTime" id="updateTime" 
						value = "${member.updateTime}" readOnly/>
					</li>
					<c:if test="${sessionScope.sessionId==member.memberId||sessionScope.role eq 'ADMIN' }">
					
					<li><input type="submit" value="회원정보 수정" /></li>
					<a href="${pageContext.request.contextPath}/delete.member?memberId=${member.memberId}">회원탈퇴</a>
					</c:if>
					
					<li><a href="${pageContext.request.contextPath}/">HOME</a></li>
					<a href="${pageContext.request.contextPath}/select.member">회원목록</a>
				</ul>
				</form>
			</ul>
			</div>
		</div>
	</div>
</body>
</html>