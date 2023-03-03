<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardFrom</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%
request.setAttribute("id", "kim");
request.setAttribute("name", "김철수");

/* RequestDispatcher rd =request.getRequestDispatcher("forwardTo.jsp");
rd.forward(request, response); */
%>


 <jsp:forward page="forwardTo.jsp"></jsp:forward> 

</body>
</html>