<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>declarationTest</title>
</head>
<body>
<%
 String str1 ="java1";
%>
<%! //jsp 선언부(변수,메소드 선언 기능), 주의 !표시 꼭 해야함
	String str2="hello";
	String getStr2(){
		return str2;
	}
%>

<%= str1 %><br>
<%= str2 %><br>
<%= getStr2() %>

</body>
</html>