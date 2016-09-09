<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		Date time = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
%>
<h3>세션정보</h3>
session 값은 서버(웹서버)가 브라우져 마다 부여하는 고유한 식별값
<%= session.getId() %>
<hr>
<%
	time.setTime(session.getCreationTime());
%>
[session 생성된 시간] : <%= formatter.format(time) %>
<hr>
<%
	time.setTime(session.getLastAccessedTime());
%>
Client  마지막 접속 시간 : <%= formatter.format(time) %>
</body>
</html>




