<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>middle</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<h1>[middle.jsp]</h1>
<!-- start.jsp에서 액션 파라미터태그를 활용해 value를 가져옴 -->
middle에서 전달 받은 값 : <%= request.getParameter("myKey") %>
<br>
<!-- 따로 액션파라미터 태그 처리하지 않고 end.jsp를 가져오지만 기존 파라미터값은 유지됨 -->
<jsp:include page="end.jsp"></jsp:include>

</body>
</html>