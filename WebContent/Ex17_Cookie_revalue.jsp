<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키값 재설정</title>
</head>
<body>

<!-- 쿠키 write -->
<%
	Cookie newcookie=new Cookie("Newname", "kglim");
	response.addCookie(newcookie);
%>

<!-- 쿠키 read -->
<%
	Cookie[] cos=request.getCookies();
if(cos!=null) {
	for(int i=0; i<cos.length; i++) {
		if(cos[i].getName().equals("Newname")) {
			//재설정 > overwrite
			Cookie NEW=new Cookie("Newname", "hong");
			response.addCookie(NEW);
		}
		out.print(cos[i].getName()+"<br>");
		out.print(cos[i].getValue()+"<hr>");
	}
} else {
	out.print("쿠키없음");
}
%>

</body>
</html>