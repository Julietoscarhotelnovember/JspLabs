<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//jsp 페이지는 Tomcat 제공하는 내장객체 사용
	//Request, Response
	request.setCharacterEncoding("UTF-8");

%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Request 내장 객체 다루기</h3>
	<!-- 클라이언트 정보(브라우져) , 클라이언트 입력값 -->
	접속한 클라이언트 IP : <%= request.getRemoteAddr() %><br>
	서버(요청방식:인코딩) : <%=request.getCharacterEncoding() %><br>
	전송방식 : <%= request.getMethod() %><br>
	서버이름 : <%= request.getServerName() %><br>
	서버포트 : <%= request.getServerPort() %><br>
	<!--  
	http://192.168.0.126:8090/WebJSPBasic/Ex04_Request.jsp	
	WebJSPBasic 요놈이 > context root
	-->
	Context root(가상디렉토리 : 홈디렉토리) : <%=request.getContextPath() %><br>
	Request URI : <%= request.getRequestURI() %>
	<!--   /WebJSPBasic/Ex04_Request.jsp  -->
</body>
</html>