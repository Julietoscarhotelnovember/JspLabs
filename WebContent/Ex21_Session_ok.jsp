<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//1.한글처리
    	request.setCharacterEncoding("utf-8");
    	
    	//2.데이터 받기
    	String uid=request.getParameter("uid");
    	String pwd=request.getParameter("pwd");
    	//out.print(uid+" / "+pwd);
    	
    	//3.로직처리
    	//DB연동(jdbc): select uid, pwd from member where uid=?
    	boolean success=false;
    	if(uid.equals(pwd)) {
    		//session변수(사용자마다 고유한 값 부여)
    		session.setAttribute("memberid", uid);
    		success=true;
    	}
    	
    	//4.결과페이지
    	//다른페이지 이동, 링크정보 제공
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(success==true) {
			out.print("<b>로그인 성공</b><br>");
			String user=(String)session.getAttribute("memberid");
			out.print(user+"님 로그인 되었습니다.<br>");
			out.print("<a href='Ex21_Session_MemberCheck.jsp'>회원전용</a>");
		} else {
	%>
	
	<script type="text/javascript">
		alert("다시 로그인 해 주세요.");
		window.history.go(-1);
	</script>
		
	<%	
		}
	%>
</body>
</html>