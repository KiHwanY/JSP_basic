<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestTestForm1</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%
String context = request.getContextPath();
%>
<form method="post" action="<%= context %>/ch02_servlet/request.do">
이름 : <input type="text" name="name"> <br>
이메일 : <input type="email" name= "email"> <br>
전화번호 : <input type="tel" name = "tel"><br>
나이 : <input type="text" name="age"> <br>
성별 : <input type="radio" name = "gender" value="m" checked>남 
 	  <input type="radio" name = "gender" value="f" checked>여 
취미 : <select name="hobby">
		<option value="운동">운동</option>
		<option value="요리">요리</option>
		<option value="낚시">낚시</option>
		<option value="등산">등산</option>
</select>
<input type="submit" value="확인">	
 		
</form>

</body>
</html>