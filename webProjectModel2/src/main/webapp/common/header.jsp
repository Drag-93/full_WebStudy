<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="css/common/header.css" />
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header">
	<div class="nav">
	<h1 class="logo">
	<a href="<%= request.getContextPath()%>/index.jsp">
		<!--  <img alt="logo" src="images/logo.png" > -->
		<img src="<%= request.getContextPath() %>/images/logo.png" alt="logo" />
	</a>
	</h1>
		<div class="gnb">
			<ul>
				<li><a href="select.member">회원목록</a></li>
				<li><a href="boardList.board">게시판</a></li>
				<li><a href="#">상품목록</a></li>
				
				<!-- 로그인 여부 -->
				<c:choose>
					<c:when test="${not empty sessionScope.sessionId }">
					<!-- 로그인 상태 -->
					<li><a href="logout.member">로그아웃</a></li>
					<li>
					<a href="detail.member?memberId=${sessionScope.sessionId }">
					내정보
					</a>
					</li>
				
					<!-- 관리자 여부 -->
					<c:if test="${sessionScope.role eq 'ADMIN' }">
						<li><a href="admin.member">관리자 페이지</a></li>
					</c:if>
				</c:when>
				<c:otherwise>
					<li><a href="joinView.member">회원가입</a></li>
					<li><a href="loginView.member">로그인</a></li>
				</c:otherwise>
				</c:choose>
				
	
			</ul>
		</div>
	</div>
</div>