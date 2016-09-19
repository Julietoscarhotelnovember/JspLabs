<%@page import="kr.or.kosta.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="empbean" class="kr.or.kosta.Emp" scope="request"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//한때 사용했다는 usebean, 지금은 잘 쓰지 않는다
	Emp e=new Emp();
	e.setEmpno(2000);
	e.setEname("kglim"); //e는 현재 페이지에서밖에 못쓴다
	request.setAttribute("emp", e);	//이렇게 하면 include, forward에서 사용 가능
	//session.setAttribute
	//application.setAttribute
	//이거 대신 객체 생성을 쉽게 하기 위해 jsp:usebean
	//id=e, class는 e를 만든 클래스
	//scope default=page, 그외 request, session, application
	
	empbean.setEmpno(2000);
	empbean.setEname("kglim");
	out.print("usebean: "+empbean.getEname());
%>
<jsp:forward page="Ex23_UseBean_Forward.jsp"></jsp:forward>
</body>
</html>