<%@page import="java.util.Formatter"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	Date time=new Date();
	SimpleDateFormat formatter=new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
%>
<h3>세션정보</h3>
session값은 서버(웹서버)가 부라우저마다 부여하는 고유한 식별값
<%= session.getId() %>
<%
	//세션관리를 위해 접속시간 확인
	time.setTime(session.getCreationTime());
%>
<hr>
[세션 생성 시간]: <%= formatter.format(time) %>
<hr>
<%
	time.setTime(session.getLastAccessedTime());
%>
[클라이언트 마지막 접속 시간]: <%= formatter.format(time) %>
</body>
</html>