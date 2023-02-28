<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memo</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<script type="text/javascript">
$(function() {
	$.ajax({
		type : "get", /*get방식은 생략가능  */
		url : "/jsp01/memo_servlet/memo_list.do", /* 요청 url */
		success : function(result) { //콜백함수
			$("#div1").html(result); //결과값을 div에 출력
		}
	})
	
});

</script>
</head>
<body>
<h2>한줄메모장</h2>
<!-- 메모를 출력시킬 영역 -->
<div id="div1"></div>

</body>
</html>