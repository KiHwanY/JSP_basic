<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>queryStringResponse</title>
</head>
<body>
<!-- 주의점 : post방식으로 값이 전송되어질 때는 한글이 깨지기 때문에 엔코딩 처리를 해준다. -->
<% request.setCharacterEncoding("UTF-8"); %>
당신의 학번은 <%= request.getParameter("no") %>입니다. <br>
당신의 이름은 <%= request.getParameter("name") %>입니다. <br>


</body>
</html>