<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<div class="container">
<table class="table table-striped table-hover">
	<tr>
	<td>번호</td>
	<td>이름</td>
	<td>나이</td>
	<td>주소</td>
	<td>전화번호</td>
	</tr>
	<tr>
	<td>1</td>
	<td>kim</td>
	<td>20</td>
	<td>서울시</td>
	<td>010-111-5555</td>
	</tr>
	<tr>
	<td>2</td>
	<td>park</td>
	<td>30</td>
	<td>인천시</td>
	<td>010-222-5555</td>
	</tr>
	<tr>
	<td>3</td>
	<td>lee</td>
	<td>40</td>
	<td>대전시</td>
	<td>010-333-5555</td>
	</tr>
</table>
</div>
<hr>
<!-- 페이지 네비게이션(페이지네이션)-->
<div class="container">
<nav aria-label="Page navigation">
	<ul class="pagination justify-content-center">
	<!-- tabindex="시작번호" 키보드의 Tab키를 누르면 다음요소로 이동됨, "-1"을 쓰면 tab시 해당 요소를 건너뜀 -->
	<li class="page-item disabled"><a class="page-link" href="#"
	 tabindex="-1" aria-disabled="true">Previous</a></li>
	 <li class="page-item"><a class="page-link" href="#">1</a></li>
	 <li class="page-item"><a class="page-link" href="#">2</a></li>
	 <li class="page-item"><a class="page-link" href="#">3</a></li>
	 <li class="page-item"><a class="page-link" href="#">Next</a></li>
	</ul>

</nav>
</div>
</body>
</html>