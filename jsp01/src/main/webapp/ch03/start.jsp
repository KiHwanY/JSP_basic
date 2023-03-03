<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>start</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<h1>[start.jsp]</h1>


<!-- middle.jsp를 가져오면서 파라미터값  "myValue"를 넘기면서 본페이지에 출력 -->
<jsp:include page="middle.jsp">
<jsp:param value="myValue" name="myKey"/>
</jsp:include>
<br>
<!-- 위 내용이 출력된 다음 맨 마지막에 출력됨 -->
myKey : <%= request.getParameter("myKey") %>

</body>
</html>