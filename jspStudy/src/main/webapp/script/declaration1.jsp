<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>declaration(선언문)</title>
</head>
<body>



	<%--실무에서는 거의 안쓴다 --%>
 	<%!
 	//클래스 멤버 변수/메서드 선언
 	int i =10;
 	String str = "ABCDE";
 	
 	//클래스 멥버 변수/메서드 선언
 	public int sum(int a, int b){
 		return a+b;
 	}
 	
 	 %>
	<%
	//java코드 실행 영역
	//PrintWriter out = rsponse.getWriter( ) ; //JSP에는 내장되어 있음
	out.println("i+ = "+i+"<br />");
	out.println("str+ = "+str+"<br />");
	out.println("sum+ = "+sum(1,5)+"<br />");
	%>
	




</body>
</html>