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
	$("#btnWrite").click(function() {
		location.href="${path}/board/write.jsp";
	});
});
</script>

</head>
<body>
<h2>게시판</h2>
<button id="btnWrite">글쓰기</button>
<table border="1" style="width: 100%;" >
  <tr>
    <th>번호</th>
    <th>이름</th>
    <th>제목</th>
    <th>날짜</th>
    <th>조회수</th>
    <th>첨부파일</th>
    <th>파일사이즈</th>
    <th>다운로드</th>
    <th>IP주소</th>
  </tr>
  <c:forEach var="dto" items="${list}">
  <tr>
    <td>${dto.num}</td>
    <td>${dto.writer}</td>
    <td><a href="${path}/board_servlet/view.do?num=${dto.num}">${dto.subject}</a></td>
    <td>${dto.reg_date}</td>
    <td>${dto.readcount}</td>
    <td align="center">
     <c:if test="${dto.filesize > 0}">
      <a href="${path}/board_servlet/download.do?num=${dto.num}">
       <img src="../images/file.gif">
      </a>
      <script>
      setTimeout('location.reload()', 1000);//다운로드 횟수를 1초마다 새로고침
      </script>
     </c:if>
    </td>
    <%-- <td>${dto.filename}</td> --%>
    <td>${dto.filesize}</td>
    <td>${dto.down}</td>
    <td>${dto.ip}</td>
  </c:forEach>
  </tr>
</table>
</body>
</html>