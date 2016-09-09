<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String memberid=(String)session.getAttribute("memberid");
    	boolean loginstate=(memberid==null) ? false:true;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(loginstate==true){
		//로그인한 사용자(session변수값 존재)
		out.print(memberid+"님 로그인 상태 입니다.<br>");
		out.print("u can see me<br>");
		out.print("<a href='Ex21_Session_logout.jsp'>로그아웃</a>");
	} else {
		out.print("<script>alert('당신은 누굽니까?');</script>");
		out.print("<script>location.href='Ex21_Session_login.jsp';</scirpt>");
	}
%>

</body>
</html>