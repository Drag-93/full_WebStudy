<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<li><a href="joinView.member">회원가입</a></li>
				<li><a href="loginView.member">로그인</a></li>
			</ul>
		</div>
	</div>
</div>