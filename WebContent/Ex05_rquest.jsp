<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   //1.한글 처리(GET, POST)
	request.setCharacterEncoding("UTF-8");

   //2. request 객체 (입력값)
   //(input > text, password , radio , textarea) : 단일값
   String userid = request.getParameter("userid");
   String userpwd = request.getParameter("userpwd");
   
   //3.(input > checkbox , select(multiple) : value 값이 여러개) 다중값
   //hobby=aa
   //hobby=aa&hobby=bb
   //hobby=aa&hobby=bb&hobby=cc
   String[] hobbys = request.getParameterValues("hobby");
   
   //4. a.jsp?id=kglim&pwd=1004&home=kangnam
   // id , pwd , home parameter 이름들
   Enumeration<String>	e= request.getParameterNames();
   String names="";
   while(e.hasMoreElements()){
	   names += e.nextElement() + " ";
   }
   
   
   //5. Map 구조(key ,value)
   //(userid,'kglim')
   String[] values = null;
   Map<String,String[]> m = request.getParameterMap();
   values= m.get("hobby");
  
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	서버로 전송된 변수목록(name) : <%= names %><br>
	
	for문 사용해서 values 출력:<br>
	<%
		for(String str : values){
	%>
		hobby:<%= str %><br>
	<%		
		}
	%>
</body>
</html>