<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
!--
	웹: 요청(request) - 응답(response) 
	1. 표현식
	2. 페이지 이동처리: 클라이언트에게 "서버로 해당 페이지를 재요청 해라" 라고  명령
		> js의 location.href="url"처럼 보인다
 -->
	1. 일반적인 사용: <%= 100+200+300 %>
	2. sendRedirect(클라이언스 서버 재요청)
	<%
		response.sendRedirect("Ex01_Basic.jsp");
	%>
</body>
</html>