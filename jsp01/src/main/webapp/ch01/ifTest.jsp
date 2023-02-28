<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ifTest</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String color= request.getParameter("color");
String selectColor ="";
switch(color){
case "blue" : selectColor = "파랑"; break;
case "green" : selectColor = "초록"; break;
case "red" : selectColor = "빨강"; break;
}
%>
<%= name  %>님이 선택한 색상은 <%= selectColor %> 입니다. <br>
range : <%= request.getParameter("range") %>
<div style="background: <%=color %>; width: 300px; height:300px;"></div>


</body>
</html>