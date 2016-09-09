<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out객체(출력객체)</title>
</head>
<body>
<!--
	aspx, jsp, php, asp 등의 서버 페이지
	장점: 보안(서버쪽 코드가 노출되지 않는다)
	단점: 서버코드 + 클라이언트코드 혼재 (스파게티코드) > 가독성이 떨어진다, 유지보수가 힘들다 
	그래서 out객체를 쓰지만, 여전히 장단점이 있다
-->

<%
	boolean b=true;
	if(10>5) {
%>
	IT(true): <font color='red'><%= b %></font>
<%
	} else { b=false;
%>
		ELSE(false): <font color='blue'><%= b %></font>
<%
	}
%>

<!-- 서블릿은 out객체를 사용한다 -->
<!-- 둘 중 하나를 써야한다 -->
<h3>out 객체</h3>
 <%
	boolean b2=true;
	if(10>5) {
		out.print("IF(true): "+"<font color='red'>"+b2+"</font>");
	} else {
		b=false;
		out.print("ELSE(false): "+"<font color='blue'>"+b2+"</font>");
	}
%>

<h3>out 출력객체(buffer 관련 정보를 out 객체가 관리한다)</h3>
버퍼: <%= out.getBufferSize() %>byte<br>
남 크기: <%= out.getRemaining() %>byte<br>
버퍼설정정보: <%= out.isAutoFlush() %>
</body>
</html>
