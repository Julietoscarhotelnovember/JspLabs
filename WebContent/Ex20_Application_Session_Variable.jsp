<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
	서버자원(was) vs memory
	application vs session
	전역 vs 개인, 접속 브라우저에 한정, 고유값
	
	[application]
	application.setAttribute("count", 0);
	접속한 모든 사용자(페이지)가 사용 가능
	활용: 총 방문자 수
	
	[session]
	session.setAttribute("userid", "kglim");
	접속한 사용자(브라우저)마다 고유하게 부여되는 변수
	session.getId();에 종속적인 변수
	활용: 접속한 사용자ID에 따른 권한처리(쇼핑몰 카트)
 -->
<h3>세션 정보</h3>
웹서버(was)가 부여한 고유한 ID값: <%= session.getId() %>
<hr>
<%
	String userid=request.getParameter("userid");
	session.setAttribute("ID", userid);
%>
<h3>세션 변수값 read</h3>
<%
	String id=(String)session.getAttribute("ID");
	//관리자 접속 페이지에 사용
	out.print("<b>당신의 id: "+id+"<b>");
%>


</body>
</html>