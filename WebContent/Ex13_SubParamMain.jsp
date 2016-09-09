<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include, forward(request객체 공유)</title>
</head>
<body>
<%
	//http://192.168.0.138:8090/WebJSPBasic/Ex13_SubParamMain.jsp?Type=A&userid=kglim
	String T=request.getParameter("Type");
	String UserID=request.getParameter("userid");
	//out.print(T+" / "+UserID);
%>
main page<br>
입력된type: <%=T %>
입력된 userid: <%=UserID %>
<hr>
<h3>include page info</h3> 
<jsp:include page="Ex13_SubParam.jsp">
	<jsp:param value="<%=T%>" name="Type2"/>
	<jsp:param value="1004" name="pwd"/>
</jsp:include>


</body>
</html>