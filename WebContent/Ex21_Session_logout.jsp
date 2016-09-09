<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
  		//로그아웃(sessionid 소멸)
  		session.invalidate();
  		out.print("<script>location.href='Ex21_Session_login.jsp' </scirpt>");
  		//이거 왜 안되냐
    %>