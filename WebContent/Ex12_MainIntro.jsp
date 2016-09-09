<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>SITE MAIN</title>
   <style type="text/css">
      table ,tr , td{border: 2px solid black; border-collapse: collapse;}
   </style>
</head>
<body>
   <table style="width: 700px">
      <tr>
         <td colspan="2">
            <jsp:include page="/CommonModule/Top.jsp"></jsp:include>
         </td>
      </tr>
      <tr>
         <td style="width: 200px">
            <jsp:include page="/CommonModule/left.jsp"></jsp:include>
         </td>
         <td style="width: 500px">
            실제 page content 영역
         
         </td>
      </tr>
      <tr>
         <td colspan="2">
            <jsp:include page="/CommonModule/bottom.jsp"></jsp:include>
         </td>
      </tr>
   
   </table>
</body>
</html>