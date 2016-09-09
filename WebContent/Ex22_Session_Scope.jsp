<%@page import="kr.or.kosta.Emp"%>
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
	Emp emp=new Emp();
	emp.setEmpno(1000);
	emp.setEname("kglim");
	
	//객체도 담을 수 있다
	session.setAttribute("empobj", emp);
	Emp obj=(Emp)session.getAttribute("empobj");
	out.print(obj.getEmpno()+"<br>");
	out.print(obj.getEname()+"<br>");
	
	//scope:모든 페이지
	//session life cycle: sessionID
	//application life cycle: web server
	
	//scope: 만든 페이지 안에서만
	//단 include, forward된 곳에서도 사용 가능
	request.setAttribute("who", "king");
	
	String who=(String)request.getAttribute("who");
	out.print("request variable: "+who);
%>

</body>
</html>