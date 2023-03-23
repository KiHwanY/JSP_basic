<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
$(function() {
	winSize();
});
function winSize()() {
	var w=window.innerWidth; //창 안쪽 넓이값, outerWidth(바깥쪽 넓이)
	var h=window.innerHeight; //창 안쪽 높이값, outerHeight(바깥쪽 높이)
	var txt = "현재 브라우저 크기 : 가로="+w+", 세로="+h;
	document.getElementById("result").innerHTML=txt;
}

</script>
</head>
<body onresize="winSize()">
<h2 id="result"></h2>
<h4>container(고정폭 레이아웃) : 레이아웃을 만드는 가장 상위 요소.</h4>
<div class="container bg-info">1) container : 576px 이하일때까지 좌우 꽉찬 레이아웃 유지</div>
<div class="container-sm bg-secondary">2) container-sm : 576px 이하</div>
<div class="container-md bg-success">3) container-md : 768px 이하</div>
<div class="container-lg bg-danger">4) container-lg : 992px 이하</div>
<div class="container-xl bg-warning">5) container-sm : 1200px 이하</div>
<div class="container-xxl bg-primary">6) container-xxl : 1400px 이하</div>
<div class="container-fluid bg-dark text-light">7) container-fluid : 항상 좌우 꽉찬 레이아웃 유지</div>



</body>
</html>