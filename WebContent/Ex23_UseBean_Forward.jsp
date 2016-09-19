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
포워드된 페이지<br>
<%
	//forward한 페이지에서 생성된 bean 객체의 주소를 받아서 사용한다
	out.print(empbean.getEmpno()+"<br>"); //이렇게 하려면 받는 페이지도 usebean 있어야됨
	out.print(empbean.getEname()+"<br>");
	
	Emp emp=(Emp)request.getAttribute("emp"); //익숙해져야 함
	out.print(emp.getEmpno()+" / "+emp.getEname());
%>
</body>
</html>