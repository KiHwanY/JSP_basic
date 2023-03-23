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
<h2>[부트스트랩의 Flex]</h2>
<p>Block 요소들을 배치할 때 플렉스를 사용하면 다양하게 요소들을 배치할 수 있다. 이 플렉스의 자유로운 요소배치를
사용해서 반응형 웹의 프레임을 설계할 수 있다.</p>
<div class="container">
	<h4>0) 기본</h4>
	<p>div는 block 특성의 요소이므로 부모요소의 가로를 꽉 채운 상태로 각각 세로로 나열하게 한다.</p>
	<div class="border">
		<div class="border bg-primary">영역1</div>
		<div class="border bg-secondary">영역2</div>
		<div class="border bg-warning">영역3</div>
	</div>
</div>
<hr>
<div class="container">
	<h4>1) d-flex</h4>
	<p>block 요소들인데도 in-line으로 성격이 바뀌어 위와 같이 가로로 자기 크기만큼 줄어든 상태로 배치된다.
	한가지 주의점은 d-flex가 부여된 자신은 block특성으로 배치가 되고, 그 자식들은 in-line형태로 배치가 된다.</p>
	<div class="border d-flex bg-info">
		<div class="border bg-primary">영역1</div>
		<div class="border bg-secondary">영역2</div>
		<div class="border bg-warning">영역3</div>
	</div>
</div>
<hr>
<div class="container">
	<h4>2) d-inline-flex</h4>
	<p>부모 영역의 테두리가 자식의 크기에 맞게 줄어든다. 즉, 자식 요소들 뿐만 아니라 자신 또한 in-line처럼 배치된다.</p>
	<div class="border d-inline-flex bg-info">
		<div class="border bg-primary">영역1</div>
		<div class="border bg-secondary">영역2</div>
		<div class="border bg-warning">영역3</div>
	</div>
</div>
<hr>
<div class="container">
	<h4>3) flex-row-reverse</h4>
	<p>요소들의 나열 순서를 반대로 할 수 있다.</p>
	<div class="border d-flex flex-row-reverse bg-info">
		<div class="border bg-primary">영역1</div>
		<div class="border bg-secondary">영역2</div>
		<div class="border bg-warning">영역3</div>
	</div>
</div>
<hr>
<div class="container">
	<h4>4) flex-column-reverse</h4>
	<p>요소들의 속성이 in-line에서 block으로 바뀌고, 나열 순서가 아래에서 위로 배치된다..</p>
	<div class="border d-flex flex-column-reverse bg-info">
		<div class="border bg-primary">영역1</div>
		<div class="border bg-secondary">영역2</div>
		<div class="border bg-warning">영역3</div>
	</div>
</div>
<hr>
<div class="container">
	<h4>5) justify-content-정렬옵션</h4>
	<p>justify-content-start : 왼쪽정렬</p>
	<div class="border d-flex justify-content-start bg-info">
		<div class="border bg-primary">영역1</div>
		<div class="border bg-secondary">영역2</div>
		<div class="border bg-warning">영역3</div>
	</div>
</div>
<hr>
<div class="container">
	<h4>6) justify-content-정렬옵션</h4>
	<p>justify-content-end : 오른쪽정렬</p>
	<div class="border d-flex justify-content-end bg-info">
		<div class="border bg-primary">영역1</div>
		<div class="border bg-secondary">영역2</div>
		<div class="border bg-warning">영역3</div>
	</div>
</div>
<hr>
<div class="container">
	<h4>7) justify-content-정렬옵션</h4>
	<p>justify-content-center : 가운데정렬</p>
	<div class="border d-flex justify-content-center bg-info">
		<div class="border bg-primary">영역1</div>
		<div class="border bg-secondary">영역2</div>
		<div class="border bg-warning">영역3</div>
	</div>
</div>
<hr>
<div class="container">
	<h4>8) justify-content-정렬옵션</h4>
	<p>justify-content-around : 전체 요소를 균일한 간격으로 배치(양쪽여백)</p>
	<div class="border d-flex justify-content-around bg-info">
		<div class="border bg-primary">영역1</div>
		<div class="border bg-secondary">영역2</div>
		<div class="border bg-warning">영역3</div>
	</div>
</div>
<hr>
<div class="container">
	<h4>8) flex-fill</h4>
	<p>flex-fill 속성이 부여된 요소는 부모 요소중 남은 영역을 자신이 차지하게 된다. 만약 여러 요소들에
	flex-fill이 부여되어 있다면, 부여되어 있는것끼리 같은 비율로 남은 영역을 다 가지게 된다.</p>
	<div class="border d-flex bg-info">
		<div class="border bg-primary">영역1</div>
		<div class="border flex-fill bg-secondary">영역2</div>
		<div class="border flex-fill bg-warning">영역3</div>
	</div>
</div>
<hr>
<div class="container">
	<h4>9) order-순서</h4>
	<p>요소들의 순서를 임의로 정할 수 있다.</p>
	<div class="border d-flex bg-info">
		<div class="border order-2 bg-primary">영역1</div>
		<div class="border order-1 bg-secondary">영역2</div>
		<div class="border order-3 bg-warning">영역3</div>
	</div>
</div>
<hr>
<div class="container">
	<h4>10) flex-wrap</h4>
	<p>영역이 inline영향을 받아 줄 바꿈이 안되고 배치(기본).</p>
	<div class="border d-flex bg-info">
		<div class="border  bg-primary">영역1 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-secondary">영역2 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-warning">영역3 -  긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
	</div>
	<p>flex-wrap 속성을 주면 block으로 전환되면서 영역이 줄바꿈되고 웹 브라우저의 크기에 따라서 줄바꿈 여부가 결정된다.</p>
	<div class="border d-flex flex-wrap bg-info">
		<div class="border  bg-primary">영역1 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-secondary">영역2 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-warning">영역3 -  긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
	</div>
</div>
<hr>

<div class="container">
	<h4>11) align-content-기준</h4>
	<p>만약 플렉스에 높이가 지정이 안되어 있다면 요소들의 높이가 플렉스의 높이가 된다. 그런데, 플렉스에 높이가 지정이 된다면
	요소들의 높이를 어떻게 해야될 지...또, 요소들이 줄바꿈 될 때는 어떻게 처리해야할지에 대한 정의가 필요하다...</p>
	<p>a) 요소들의 높이 200px 전체 적용</p>
	<div class="border d-flex flex-wrap bg-info" style="height: 200px;">
		<div class="border  bg-primary">영역1 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-secondary">영역2 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-warning">영역3 -  긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
	</div>
	<p>b) align-content-start : 요소들의 상단에 붙으며 내용은 안쪽 여백이 없어짐</p>
	<div class="border d-flex flex-wrap align-content-start bg-info" style="height: 200px;">
		<div class="border  bg-primary">영역1 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-secondary">영역2 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-warning">영역3 -  긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
	</div>
	<p>c) align-content-end : 요소들의 하단에 붙으며 내용은 안쪽 여백이 없어짐</p>
	<div class="border d-flex flex-wrap align-content-end bg-info" style="height: 200px;">
		<div class="border  bg-primary">영역1 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-secondary">영역2 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-warning">영역3 -  긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
	</div>
	<p>d) align-content-center : 요소들의 가운데 배치된다.</p>
	<div class="border d-flex flex-wrap align-content-center bg-info" style="height: 200px;">
		<div class="border  bg-primary">영역1 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-secondary">영역2 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-warning">영역3 -  긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
	</div>
	<p>e) align-content-around : 수직방향으로 균일하게 정렬된다.</p>
	<div class="border d-flex flex-wrap align-content-around bg-info" style="height: 200px;">
		<div class="border  bg-primary">영역1 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-secondary">영역2 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-warning">영역3 -  긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
	</div>
	<p>f) align-content-stretch : 부모 요소에서 높이가 꽉차게 줄바꿈(노옵션과 마찬가지)</p>
	<div class="border d-flex flex-wrap align-content-stretch bg-info" style="height: 200px;">
		<div class="border  bg-primary">영역1 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-secondary">영역2 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-warning">영역3 -  긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
	</div>
</div>
<hr>

<div class="container">
	<h4>12) align-items-기준</h4>
	<p>a) align-items-start : 요소가 상단부터 시작하며 수직방향으로 균일하게 정렬</p>
	<div class="border d-flex flex-wrap align-items-start bg-info" style="height: 200px;">
		<div class="border  bg-primary">영역1 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-secondary">영역2 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-warning">영역3 -  긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
	</div>	
	<p>b) align-items-end : 요소가 하단부터 시작</p>
	<div class="border d-flex flex-wrap align-items-end bg-info" style="height: 200px;">
		<div class="border  bg-primary">영역1 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-secondary">영역2 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-warning">영역3 -  긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
	</div>
	<p>c) align-items-center : 요소가 가운데 기준으로 처리</p>
	<div class="border d-flex flex-wrap align-items-center bg-info" style="height: 200px;">
		<div class="border  bg-primary">영역1 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-secondary">영역2 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-warning">영역3 -  긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
	</div>
	<p>d) align-items-baseline : start와 같다</p>
	<div class="border d-flex flex-wrap align-items-baseline bg-info" style="height: 200px;">
		<div class="border  bg-primary">영역1 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-secondary">영역2 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-warning">영역3 -  긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
	</div>
	<p>e) align-items-stretch : 세로폭을 꽉 채운다.</p>
	<div class="border d-flex flex-wrap align-items-stretch bg-info" style="height: 200px;">
		<div class="border  bg-primary">영역1 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-secondary">영역2 - 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
		<div class="border  bg-warning">영역3 -  긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글 긴글</div>
	</div>
</div>
<div class="container">
	<h4>13) align-self-배치기준</h4>
	<div class="border d-inline-flex bg-info" style="height: 200px; ">
		<div class="border  align-self-start bg-primary">start</div>
		<div class="border  align-self-end bg-secondary">end</div>
		<div class="border  align-self-center bg-warning">center</div>
		<div class="border  align-self-baseline bg-secondary">baseline</div>
		<div class="border  align-self-stretch bg-success">stretch</div>
	</div>
</div>
<hr>
</body>
</html>