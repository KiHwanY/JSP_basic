<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.3.min.js"></script>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
$(function() {
	comment_list();
	$("#btnSave").click(function() { /* 확인 */
		comment_add();
	});
	$("#btnList").click(function() { /* 목록 */
		location.href="${path}/board_servlet/list.do";
	});
	$("#btnReply").click(function() { /* 답변 */
		document.form1.action="${path}/board_servlet/reply.do";
		document.form1.submit();
	});
	$("#btnEdit").click(function() { /* 수정/삭제 */
		document.form1.action="${path}/board_servlet/pass_check.do";
		document.form1.submit();
	});
});
function comment_add() { /* 댓글 쓰기 구현 */
	var param="board_num=${dto.num}&writer="+$("#writer").val()
	+"&content="+$("#content").val();
	$.ajax({
		type: "post",
		url: "${path}/board_servlet/comment_add.do",
		data: param,
		success: function() {
			$("#writer").val("");
			$("#content").val("");
			comment_list();
		}
	});
}
function comment_list() { /* 댓글 목록 출력 */
	$.ajax({
		type: "post",
		url: "${path}/board_servlet/commentList.do",
		data: "num=${dto.num}",
		success: function(result) {
			$("#commentList").html(result);
		}
	});
}
</script>
</head>
<body>
<h2>상세 화면</h2>
<form name="form1" method="post">
<table border="1" style="width: 100%;">
 <tr>
  <td>날짜</td>
  <td>${dto.reg_date}</td>
  <td>조회수</td>
  <td>${dto.readcount}</td>
 </tr>
 <tr>
  <td>이름</td>
  <td colspan="3">${dto.writer}</td>
 </tr>
 <tr>
  <td>제목</td>
  <td colspan="3">${dto.subject}</td>
 </tr>
 <tr>
  <td>본문</td>
  <td colspan="3">${dto.content}</td>
 </tr>
 <tr>
  <td>비밀번호</td>
  <td colspan="3">
   <input type="password" name="passwd" id="passwd">
   <c:if test="${param.message == 'error'}">
    <span style="color: red;">비밀번호가 일치하지 않습니다.</span>
   </c:if>
  </td>
 </tr>
 <tr>
  <td>첨부파일</td>
  <td colspan="3">
   <c:if test="${dto.filesize > 0}">${dto.filename}(${dto.filesize} bytes )
    <a href="${path}/board_servlet/download.do?num=${dto.num}">[다운로드]</a>
   </c:if>
  </td>
 </tr>
 <tr>
  <td colspan="4" align="center">
   <input type="hidden" name="num" value="${dto.num}">
   <input type="button" value="수정/삭제" id="btnEdit">
   <input type="button" value="답변" id="btnReply">
   <input type="button" value="목록" id="btnList">
  </td>
 </tr>
</table>
</form>
<!-- 댓글 쓰기 폼 -->
<table border="1" style="width: 100%;">
 <tr>
  <td><input id="writer" placeholder="이름"></td>
  <td rowspan="2">
   <button id="btnSave" type="button">확인</button>
  </td>
 </tr>
 <tr>
  <td><textarea rows="5" cols="80" placeholder="내용을 입력하세요" id="content"></textarea></td>
 </tr>
</table>

<!-- 댓글 목록을 출력할 영역 -->
<div id="commentList"></div>

</body>
</html>