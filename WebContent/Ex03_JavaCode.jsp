<%@page import="java.util.Calendar"%>
<%@page import="kr.or.kosta.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Emp e = new Emp();
    e.setEmpno(1000);
    e.setEname("kglim");

    //문제
    //Calendar 객체 선언하고
    //Client 화면에 > 오늘날짜:2016년9월7일 출력
    Calendar cal =  Calendar.getInstance();
    int year = cal.get(Calendar.YEAR);
    int month = cal.get(Calendar.MONTH) + 1;
    int date = cal.get(Calendar.DATE);
    		
    
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
출력 : (표현식)<br>
사번 : <%= e.getEmpno() %> <br>
이름 : <%= e.getEname() %> <br>
오늘날짜 : <%=year%>년<%=month%>월<%=date%>일
</body>
</html>




