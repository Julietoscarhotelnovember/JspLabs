<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>메인페이지의 request 객체사용</h3>
	<fieldset>
		<legend>include</legend>
		request_type: <%= request.getParameter("Type") %>
		request_userid: <%= request.getParameter("userid") %>
	</fieldset>
	
	<h3>메인페이지에 param 강제 설정하기</h3>
	<fieldset>
		<legend>param값 이용하기</legend>
		<!--
			main.jsp < jsp:param 액션태그로 넘긴 값 
		 -->
		 <%
		 	String subType=request.getParameter("Type2");
		 	String subpwd=request.getParameter("pwd");
		 	if(subType.equals("A")){
		 		out.print("<i>당신이 요청한 제품은: </i>"+subType);
		 	} else if (subType.equals("B")) {
		 		out.print("<i>요청하신 상품은 품절입니다.</i>");
		 	}
		 	out.print("<br>메인페이지에서 넘어온 pwd: "+subpwd);
		 %>
	</fieldset>
</body>
</html>