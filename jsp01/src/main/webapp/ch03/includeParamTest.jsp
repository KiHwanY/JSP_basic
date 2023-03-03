<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>includeParamTest</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<h2>저는 포함되는 페이지인 :</h2>
<h3> <%= request.getParameter("pVar") %>입니다.</h3>
<h3> <%= request.getParameter("nVar") %>님 환영합니다.</h3>
</body>
</html>