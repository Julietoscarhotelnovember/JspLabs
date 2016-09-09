<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 로그인</title>
</head>
<body>
   <form action = "Ex21_Session_ok.jsp">
      ID:<input type = "text" name = "uid"><br/>
      PWD:<input type = "password" name = "pwd"><br/>
      <input type = "submit" value = "로그인">
   </form>
   <h3>회원 전용 페이지</h3>
   <a href = "Ex21_Session_MemberCheck.jsp">회원 접속</a>
</body>
</html>