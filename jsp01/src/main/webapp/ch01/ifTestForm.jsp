<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ifTestForm</title>
</head>
<body>
<form method="post" name="form1" action="ifTest.jsp">
이름 : <input name="name"> <br>
색상 :  
<select name="color">
	<option value="blue">파랑</option>
	<option value="green">초록</option>
	<option value="red">빨강</option>
</select>
<br>
<input type="range" name="range" min="1" max="100" 
onchange="document.form1.rangeout.value=this.value">
<output name="rangeout" for="range">50</output>
<input type="submit" value="확인">
</form>
</body>
</html>