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
	id, pass, chk 받아서
	- 같으면 로그인 성공
		*chk 되어있으면 
			쿠키 생성
			id를 쿠키에 담아서
			쿠키 유효시간은 24시간
			클라이언트에 쿠키 쓰기 
		*chk 없으면
			쿠키 삭제
	- 같지 않으면 실패
		response.sendRedirect()
 -->
 <%
 	String UID=request.getParameter("UID");
 	String PWD=request.getParameter("PWD");
 	String chk=null;
 	chk=request.getParameter("chk");
 	
 	if((UID.equals("kglim")) && PWD.equals("1004")) {
 		out.print("<h3>로그인 성공!</h3>");
		Cookie cookie=new Cookie("UID","kglim");
		if(chk!=null) {
 			cookie.setMaxAge(24*60*60); 			
		} else {
			cookie.setMaxAge(0); 
		}
		response.addCookie(cookie);
 	} else {
 		out.print("<h3>로그인 실패!</h3>");
 		response.sendRedirect("login_Cookie.jsp");
 	}
 %>
</body>
</html>