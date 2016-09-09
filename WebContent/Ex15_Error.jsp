<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="/error/commonerror.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
	서버코드에러 500
	에러페이지를 클라이언트가 직접 보는 것은 좋지 않다 > 대체 페이지로 연결 > web.xml
-->
<%
	String data=request.getParameter("name").toLowerCase();
%>
data: <%= data %>
</body>
</html>