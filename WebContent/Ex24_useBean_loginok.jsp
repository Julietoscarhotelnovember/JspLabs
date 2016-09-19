<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="emp" class="kr.or.kosta.Emp" scope="page"></jsp:useBean>
<!-- 1단계 -->
<!-- 전제조건:setter가 구현되어 있어야 한다 -->
<!-- jsp만으로 객체를 생성할 수 있게 -->
<!-- 이거시 진정한 usebean의 의미 -->
<!-- name객체명, property객체가가지는변수명, param넘어오는파라미터 -->
<!-- 1단계 넘나 힘든것
<jsp:setProperty property="empno" name="emp" param="txtempno" />
<jsp:setProperty property="ename" name="emp" param="txtename" />
-->

<!-- 2단계 코드량 줄이기 -->
<!--
전제조건 필요, 자동매핑을 위해
class Emp {private int empno}
input태그의 name이 클래스 변수명과 동일해야 한다  
-->
<jsp:setProperty property="*" name="emp"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>사원정보 확인</h3>
스크립트릿이 하나도 없다!!<br>
<jsp:getProperty property="empno" name="emp"/><br>
<jsp:getProperty property="ename" name="emp"/><br>
</body>
</html>