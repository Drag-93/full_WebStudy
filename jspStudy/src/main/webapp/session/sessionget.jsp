<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" >
<title>Insert title here</title>
</head>
<body>

	<%
		Object obj1 = session.getAttribute("jsp0414");	
		String mySessionName = (String)obj1;// 문자형으로변환
		out.println(mySessionName +"<br />");		
		Object obj2 = session.getAttribute("sessionId1");
		Integer myNum = (Integer)obj2;// 숫자형으로변환
		out.println(myNum +"<br />");		
		Integer obj3=(Integer)session.getAttribute("sessionId2");		
		out.println(obj3 +"<br />");		
		out.println("************************ <br />");	
		String sName="";
		String sValue="";
		Enumeration enumeration = session.getAttributeNames();// session모든 data		
		while(enumeration.hasMoreElements()){// session의 모든 정보를 출력			
			sName = enumeration.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "  , sValue : " + sValue + "<br />");
		}		
		out.println("************************ <br />");			
		// 기본세션유지 시간 30분
		String sessionId = session.getId();		
		out.println("세션아이디 : " + sessionId + "<br />");
		// 세션유지시간 조회
		int sessionTime =  session.getMaxInactiveInterval();
		out.println("세션유지 시간 : " + sessionTime + "<br />");		
		out.println("************************ <br />");
		session.removeAttribute("jsp0414");//특정 session 종료
		
		Enumeration enumeration1 = session.getAttributeNames();		
		while(enumeration1.hasMoreElements()){
			sName = enumeration1.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br />");
			out.println("sValue : " + sValue + "<br />");
		}		
		out.println("************************ <br />");		
		// 모든 세션삭제 -> 보통 logout
		session.invalidate();// session 종료  ->로그아웃
		
				
	%>
	<a href="sessiontest.jsp">session test</a>
	
	
	
	
	
	
	
	
</body>
</html>