<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FilePath 다루기</title>
</head>
<body>
<!-- 
	StringBuffer url = request.getRequestURL();  // URL : 전체주소 (프로토콜 + IP + 포트 + 상세경로)
 	String uri = request.getRequestURI();        // URI : 프로젝트 이하 경로 (CP + SP)
 	String cp = request.getContextPath();        // CP : 프로젝트 명
 	String sp = request.getServletPath();        // SP : 패키지 + 파일명
	-----------------------------------------------------------------
 	URL : http://localhost:8080/TestBoard/JSPBoard/created.jsp
 	URI : /TestBoard/JSPBoard/created.jsp
 	CP  : /TestBoard
 	SP  : /JSPBoard/created.jsp
 	
 	1.웹브라우저에서 바라보는 웹서버경로(가상경로)
 		http://192.168.0.138:8090/WebJSPBasic/Ex10_WebApp_FilePath.jsp
 		
 	2.가상경로를 가지고 실제 물리적인 주소값을 추출 (c:\\.....)
 		C:\kosta129student\Web\WebClientLabs\WebJSPBasic\WebContent\Ex10_WebApp_FilePath.jsp
 		
 	3.웹경로 > 물리경로로 변환하기
 		http://192.168.0.138:8090/WebJSPBasic/download/note.txt
-->
<%
	String resourcepath="/download/note.txt";
	out.print(resourcepath+"<br>");
	
	String contextpath=application.getRealPath(request.getContextPath());
	String realpath=application.getRealPath(resourcepath);
	out.print("request.getContextPath(): "+request.getContextPath()+"<br>");
	out.print("contextpath: "+contextpath+"<br>");
	out.print("realpath: "+realpath);
	
	//원래경로
	//C:\kosta129student\Web\WebClientLabs\WebJSPBasic
	//C:\kosta129student\Web\WebClientLabs\WebJSPBasic\download\note.txt
	
	//이클립스에 톰캣을 물려서 서비스하면 다음과 같은 경로에서 서비스 된다
	//C:\kosta129student\Web\WebClientLabs\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\WebJSPBasic\WebJSPBasic
	//C:\kosta129student\Web\WebClientLabs\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\WebJSPBasic\download\note.txt
	
%>

</body>
</html>