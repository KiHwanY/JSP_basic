<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<link rel="stylesheet" type="text/css" href="template.css">
</head>
<body>
<header>
	<jsp:include page="top.jsp"></jsp:include>
	
</header>
<div id="content">
	<section id="areaSub">
	<jsp:include page="Left.jsp"></jsp:include>
	</section>
	<section id="areaMain">
	<jsp:include page='<%=request.getParameter("CONTENTPAGE") %>'/>
	</section>
	<footer>
	<jsp:include page="bottom.jsp"></jsp:include>
	</footer>
</div>

</body>
</html>