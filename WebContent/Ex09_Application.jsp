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
	전체 웹(프로젝트) 서버에서 전역자원을 관리하는 객체
	웹사이트 전체에서 공통으로 사용되는 자원에 대해 read, write 가능
	공통사항: 다운로드 경로, 관리자 메일 등
	활용: 이클립스에서 WEB-INF 폴더 > web.xml(전체 웹사이트에 대한 설정정보)
	보안(기본으로 막혀있는 보안용 폴더, 서버페이지를 여기에 넣는다, 클라이언트는 접근할 수 없다)
	톰캣이 젤 첨에 web.xml를 로드한다
-->
<%
	String param=application.getInitParameter("email");
	out.print("<h3>"+param+"</h3>");
%>

</body>
</html>