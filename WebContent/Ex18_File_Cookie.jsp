<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 쿠키(소멸시간)</title>
</head>
<body>
<!-- 
	1.메모리쿠키(브라우저 쿠키): 소멸시간 없음, session과 동일
	2.파일 쿠키(소멸시간을 정의): client가 강제로 지우지 않으면 정한 시간까지 유지됨
							setMaxAge(60): 60초
							30일은 30*24*60*60로 표현 가독성을 위해
 -->
 <%
 	Cookie co=new Cookie("myname","kglim");
 	co.setMaxAge(30*24*60*60);
 	response.addCookie(co);
 	
 	//서버쪽에서 강제로 파일쿠키 삭제
 	//co.setMaxAge(0);
 %>
</body>
</html>