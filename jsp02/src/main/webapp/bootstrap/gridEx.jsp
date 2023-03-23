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
	document.getElementById("result").innerHTML = txt;
}

</script>
</head>
<body onresize="winSize()">
<h2 id="result"></h2>
<h2>Grid System</h2>
<ul>
	<li>.col p- (요소의 배치가 디바이스 크기에 상관없이 계속 유지)</li>
	<li>.col-sm- (576px이상일 때 유지)</li>
	<li>.col-md- (768px)</li>
	<li>.col-lg- (992px)</li>
	<li>.col-xl- (1200px)</li>
	<li>.col-xxl- (1400px)</li>	
</ul>
<p>효과를 보려면 브라우저 창의 크기를 조절합니다.</p>
<hr>
<div class="container-fluid mt-3">
<p>Bootstrap의 그리드 시스템은 1개의 행(row)에 최대 12개의 열(col)값을 허용한다.</p>
<div class="row bg-primary">
	<div class="col-sm-1 bg-primary text-white">.col-sm-1</div>
	<div class="col-sm-1 bg-secondary text-white">.col-sm-2</div>
	<div class="col-sm-1 bg-success text-white">.col-sm-3</div>
	<div class="col-sm-1 bg-danger text-white">.col-sm-4</div>
	<div class="col-sm-1 bg-warning text-white">.col-sm-5</div>
	<div class="col-sm-1 bg-info text-white">.col-sm-6</div>
	<div class="col-sm-1 bg-primary text-white">.col-sm-7</div>
	<div class="col-sm-1 bg-secondary text-white">.col-sm-8</div>
	<div class="col-sm-1 bg-success text-white">.col-sm-9</div>
	<div class="col-sm-1 bg-danger text-white">.col-sm-10</div>
	<div class="col-sm-1 bg-warning text-white">.col-sm-11</div>
	<div class="col-sm-1 bg-info text-white">.col-sm-12</div>
</div>

	<div class="row">
	<div class="col-p-3 bg-primary text-white">.col-p-3(컬럼값 3개 균등배분)</div>
	<div class="col-p-3 bg-dark text-white">.col-p-3(컬럼값 )</div>
	<div class="col-p-3 bg-secondary text-white">.col-p-3(컬럼값 )</div>
	</div>
	
	<div class="row">
	<div class="col-md-4 bg-warning text-white">.col-md-4</div>
	<div class="col-md-8 bg-success text-white">.col-md-8(좌측의 2배크기 컬럼차지)</div>
	</div>
	
	<div class="row">
	<div class="col-lg-2 bg-primary text-white">.col-lg-2</div>
	<div class="col-lg-4 bg-dark text-white">.col-lg-4</div>
	<div class="col-lg-6 bg-success text-white">.col-lg-6</div>
	<div class="col-lg-8 bg-warning text-white">
	.col-lg-8(옆의 컬럼값들이 2+4+6=12이상이 되었기 때문에 본 요소는 줄바꿈이 됨)</div>
	</div>
</div>

</body>
</html>