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
<h2>1) 부트스트랩 margin(border기준 바깥쪽 여백)</h2>
<p>m-(0~5),ml(left),mt(top),mb(bottom),mr(right),auto</p>
<div class="container">
<!-- bootstrap 3버전 px단위, -->
<!-- bootstrap 4이상버전 rem단위, -->
<div class="bg-danger m-5">3rem = 48px</div>
<div class="bg-info m-4">1.5rem = 24px</div>
<div class="bg-warning m-3">(default)1rem = 16px</div>
<div class="bg-success m-2">0.5rem = 8px</div>
<div class="bg-primary m-1">0.25rem = 4px</div>
<div class="bg-danger mx-auto">margin-left:auto; margin-right:auto와 같음</div>
<div class="bg-secondary my-auto">margin-top:auto; margin-bottom:auto와 같음</div>
</div>
<hr>

<h2>2) 부트스트랩 padding</h2>
<p>p-(0~5), p1,pt,pb,pr, w,-auto</p>
<div class="d-flex p-2 bg-secondary text-white">
	<div class="p-2 bg-info">p-2 item 1</div>
	<div class="p-2 bg-warning">p-2 item 1</div>
	<div class="p-2 bg-primary">p-2 item 1</div>
</div>
<div class="d-flex p-4 bg-secondary text-white">
	<div class="p-4 bg-info">p-4 item 1</div>
	<div class="p-4 bg-warning">p-4 item 1</div>
	<div class="p-4 bg-primary">p-4 item 1</div>
</div>

<div class="container mt-3">
	<h2>Padding Flax</h2>
	<div class=" d-flex p-3 bg-success text-white">
	<div class="p-2">Home</div>
	<div class="p-2">Search</div>
	<div class="p-2 border ml-auto">Logout</div>
	<!-- 수직 제외하고는 같이 묶어서 바뀌는 상위 태그 -->
	</div>
</div>

<div class="container mt-3">
	<h2>Padding Wrap</h2>
	<p>
	<code>.flex.wrap : 아이템이 화면 끝으로 올 때 줄바꿈</code>
	</p>
	<!-- wrap : 아이템이 화면 끝으로 올 때 줄바꿈 -->
	<div class="d-flex flex-wrap text-white bg-light">
		<div class="p-2 border bg-success">Item 1</div>
		<div class="p-2 border bg-success">Item 2</div>
		<div class="p-2 border bg-success">Item 3</div>
		<div class="p-2 border bg-success">Item 4</div>
		<div class="p-2 border bg-success">Item 5</div>
		<div class="p-2 border bg-success">Item 6</div>
		<div class="p-2 border bg-success">Item 7</div>
		<div class="p-2 border bg-success">Item 8</div>
		<div class="p-2 border bg-success">Item 9</div>
	</div>
	<br>
	<p>
	<code>.flex.nowrap : 줄 안바꿈</code>
	</p>
	<div class="d-flex flex-nowrap text-white bg-light">
		<div class="p-2 border bg-success">Item 1</div>
		<div class="p-2 border bg-success">Item 2</div>
		<div class="p-2 border bg-success">Item 3</div>
		<div class="p-2 border bg-success">Item 4</div>
		<div class="p-2 border bg-success">Item 5</div>
		<div class="p-2 border bg-success">Item 6</div>
		<div class="p-2 border bg-success">Item 7</div>
		<div class="p-2 border bg-success">Item 8</div>
		<div class="p-2 border bg-success">Item 9</div>
	</div>
</div>
<hr>
<h2>3) Gutter는 열 사이의 패딩으로, 부트 스트랩 그리드 시스템에서 컨텐츠의 간격을 맞추고 정렬하는데 사용</h2>
<p>수평거터(.gx-* 클래스는 수평 거터 너비를 제외)</p>
<div class="container overflow-hidden">
	<div class="row gx-5">
		<div class="col">
			<div class="p-3 border bg-light">Custom column padding</div>
		</div>
	</div>
	<div class="col">
		<div class="p-3 border bg-light">Custom column padding</div>
		</div>
	</div>
</div>
<p>수직거터(.gy-* 클래스를 사용하여 수직 거터 너비를 제어)</p>
<div class="container overflow-hidden">
	<div class="row gy-5">
		<div class="col-6">
			<div class="p-3 border bg-light">Custom column padding</div>
		</div>

	<div class="col-6">
		<div class="p-3 border bg-light">Custom column padding</div>
		</div>
		<div class="row gy-5">
		<div class="col-6">
			<div class="p-3 border bg-light">Custom column padding</div>
		</div>
	</div>
	<div class="col-6">
		<div class="p-3 border bg-light">Custom column padding</div>
		</div>
	</div>
</div>
<p>수평 및 수직 거터(.g-* : 수평, 수직거터 너비 제어에 사용)</p>
<div class="container ">
	<div class="row g-5">
		<div class="col-6">
			<div class="p-3 border bg-light">Custom column padding</div>
		</div>

	<div class="col-6">
		<div class="p-3 border bg-light">Custom column padding</div>
		</div>
		<div class="row gy-5">
		<div class="col-6">
			<div class="p-3 border bg-light">Custom column padding</div>
		</div>
	</div>
	<div class="col-6">
		<div class="p-3 border bg-light">Custom column padding</div>
		</div>
	</div>
</div>

</body>
</html>