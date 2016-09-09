<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		request.setCharacterEncoding("UTF-8");
	%>
	<%
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String userPass = request.getParameter("userPass");
		String gender = request.getParameter("gender");
		String userEmail = request.getParameter("userEmail");
		String userSsn1 = request.getParameter("userSsn1");
		String userSsn2 = request.getParameter("userSsn2");
		String userZipCode = request.getParameter("userZipCode");
		String userAddr1 = request.getParameter("userAddr1");
		String userAddr2 = request.getParameter("userAddr2");
		String userPhone = request.getParameter("userPhone");
		String[] hobbys = request.getParameterValues("hobby");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h3>회원가입 확인</h3><br><br>
ID: <%= userId %><br>
이름: <%= userName %><br>
성별: <%= gender %><br>
이메일: <%= userEmail %><br>
주민등록번호: <%= userSsn1 %>-<%= userSsn2 %><br>
우편번호: <%= userZipCode %><br>
주소1: <%= userAddr1 %><br>
주소2: <%= userAddr2 %><br>
전화번호: <%= userPhone %><br>
취미: <%
		if(hobbys!=null) {
    		for(String str : hobbys){
     %>
     	 <%= str %>&nbsp;
     <%
    		}
    	} else {
    		
    	}
     %><br>
생년월일: <%= year %>년 <%= month %>월 <%= day %>일

</body>
</html>