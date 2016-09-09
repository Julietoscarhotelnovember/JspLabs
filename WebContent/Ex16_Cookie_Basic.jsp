<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키</title>
</head>
<body>
<!-- 
	정보를 저장하는 방법
	client(local pc, 브라우저) : server(web server)
	1. 쿠키					   1. server memory(session 객체) > 임시
	2. local storage		   2. server memory(application 객체) > 임시
							   3. file > 영속
							   4. DB > 영속
							   
	쿠키에는
	1. 브라우저 쿠키(메모리 쿠키) > 웹브라우저가 켜져있는 동안 유지(=session)
	2. 파일쿠키: local pc에 파일로 저장 > 소멸시간
 -->
 
 <%
 	Cookie mycookie=new Cookie("cname", "1004");
 	//만든 쿠키를 클라이언트 브라우저에 write
 	response.addCookie(mycookie);
 	//소멸시간이 없으면 > 브라우저를 닫으면 소멸
 	
 %>
 	서버 도메인 이름: <%= mycookie.getDomain() %><br>
 	서버 설정한 이름: <%= mycookie.getName() %><br> <!-- 쿠키 변수 이름 -->
 	서버 설정값: <%= mycookie.getValue() %><br>
 <%
 	Cookie[] cs=request.getCookies();
 	if(cs != null || cs.length>0) {
 		for(int i=0; i<cs.length; i++) {
			out.print(cs[i].getName()+"<br>");
			out.print(cs[i].getValue()+"<br>");
			out.print(cs[i].getMaxAge()+"<br>");
 		}
 	} else {
 		out.print("생성된 쿠키가 없음");
 		//2번 돌려야 나온다 > 초기 연결값이 없어서
 	}
 %>
</body>
</html>