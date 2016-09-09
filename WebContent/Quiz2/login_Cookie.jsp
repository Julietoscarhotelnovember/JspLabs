<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--
		쿠키가 있으면 UID에 value값 출력 
	 -->
	 <%
	 	Cookie[] cos=request.getCookies();
	 	String id="";
	 	if(cos.length==2) {
	 		id=cos[0].getValue();
	 	} else {
	 		
	 	}
	 %>
	 
	<form action="loginok_Cookie.jsp" method="get">
		ID: <input type="text" name="UID" value="<%= id %>"><br>
		PWD: <input type="password" name="PWD"><br>
		<hr>
		ID값 유지하기: <input type="checkbox" name="chk">
		<hr>
		<input type="submit" value="로그인">
		<input type="reset" value="취소">	
	</form>
</body>
</html>