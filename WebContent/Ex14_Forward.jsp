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
	request 공유는 페이지 요청 하나당 한개의 request 객체 생성 > 요청 페이지에서만 사용 가능
	but 페이지가 내부에
	1.include > 된 페이지에서도 같은 request 공유 가능
			  > 제어권이 원래 페이지로 돌아옴
	2.forward > 된 페이지에서도 같은 request 공유 가능
			  > 제어권이 forward된 페이지로 넘김	
 -->
 
 <%
 	String code=request.getParameter("code");
 	String viewURI=null;
 	if(code.equals("A")) {
 		viewURI="/CommonModule/a.jsp";
 	} else if(code.equals("B")) {
 		viewURI="/CommonModule/b.jsp";
 	} else if(code.equals("C")) {
 		viewURI="/CommonModule/c.jsp";
 	}
 %>
 <h3>main forward 페이지 상단</h3>
 기타내용
 <jsp:forward page="<%= viewURI %>"></jsp:forward>
 <h3>main forward 페이지 하단</h3>
 기타 내용

</body>
</html>