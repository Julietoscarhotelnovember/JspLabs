<%@ page 
    language="java" 
    contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>    
<!--  
	JSP 주석 처리
	*선언부 : jsp 페이지에 대한 기본 설정 정보 세팅
    ex) page > 사용언어 , 인코딩 ....
    ex) page > import="java.Util.Date ..
    기타 등등

	*스크립트 요소
	1.표현식(출력:Expression) : 값을 출력 (출력 대상 : client 브라우져)
	2.스크립트릿 : 자바코드 표현 
	3.선언부 : page ...

-->  
<%
   //자바코드 사용 (스크립트릿)
   Date day = new Date();	
%>  
<%!
   //선언부 (함수)
   public int add(int i , int j){
	return i+j;
   }
   
   public int mul(int i , int j){
	   return i*j;
   }

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	날짜 <%= day %><br>
	<%
		int result = add(100,200);	
	%>
	당신이 호출한 함수 결과 : <%= result %><br>
	<%
		int sum = 0;
		for(int i = 0 ; i <= 100 ;i++){
			sum+=i;
	%>
		<%= sum %><br>
	<%		
		}
	
	%>
</body>
</html>



