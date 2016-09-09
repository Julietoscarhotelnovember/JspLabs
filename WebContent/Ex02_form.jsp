<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>    
    
    
    
<%
   //1. 클라이언트가 요청한 데이터 받기
   //http://localhost:8090/WebJSPBasic/Ex02_form.jsp?userid=kglim&userpwd=1004&hobby=baseball&hobby=soccer
   //request 객체를 통해서 받기 (tomcat 내장된 내장 객체)
   String userid =  request.getParameter("userid");
   String userpwd = request.getParameter("userpwd");
   
   //&hobby=baseball&hobby=soccer (배열)
   String[] hobbys =  request.getParameterValues("hobby");
   
   //이후에 DB insert 하고 싶으면
   //클라이언트에게 정보 출력
  
%>

<!--  
1.window -> preferences -> General -> Workspace -> UTF-8 변경
  -프로젝트 생성시 마다 (추가 변경할 필요 없다)

2.window -> preferences -> Web -> CSS  Files -> Encoding (UTF-8)
  window -> preferences -> Web -> HTML Files -> Encoding (UTF-8)
  window -> preferences -> Web -> JSP  Files -> Encoding (UTF-8)
 
3.JSP 파일 Html5 형식 (Template) 추가하기
  window -> preferences -> Web -> JSP  Files -> Editor -> Tempate -> NEW

4.Tomcat 서버(WAS) 이클리스 설정
  window -> preferences -> Server -> Runtime Environments -> 서버등록
  4.1 server.xml -> 65 라인 -> 서버 port 변경(충돌시) -> 
      <Connector connectionTimeout="20000" port="8090" protocol="HTTP/1.1" redirectPort="8443"/>

  4.1 server Tab에서 서버 등록 (new) -> start , stop TEST

5. Web project 생성 -> jsp 파일 생성 -> Hello World -> 

**한글 처리**
1. 전송방식 GET 방식인 경우
   방법 : 페이지 상단 (request 객체로 데이터 받기 전에)
         1. request.setCharacterEncoding("UTF-8");
         2. Tomcat 서버 설정 : server.xml 
         3. 65 라인 : URIEncoding="UTF-8" 추가
             <Connector connectionTimeout="20000" port="8090" protocol="HTTP/1.1" redirectPort="8443" URIEncoding="UTF-8" />

2. 전송방식 POST 방식인 경우
   방법 : 페이지 상단 (request 객체로 데이터 받기 전에)
         1. request.setCharacterEncoding("UTF-8");



-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	당신이 입력한 ID : <%= userid %><br>
	당신이 입력한 PWD: <%= userpwd %><br>
	
     <%
    	for(String str : hobbys){
     %>
     	 hobby : <%= str %><br>
     <% 	 	
    	}
     %>
</body>
</html>