<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>List Page</h1>
	<button id='regBtn' type="button">Register New Board</button>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var result = '<c:out value="${result}"/>';
							checkModal(result);
							function checkModal(result) {
								if (result === '') {
									return;
								}
								if (parseInt(result) > 0) {
									$(".modal-body").html(
											"게시글 " + parseInt(result)
													+ " 번이 등록되었습니다.");
								}
								<!--
								$("#myModal").modal("show");
								-->
							}
							$("#regBtn").on("click", function() {
								self.location = "/controller/board/register";
							});
						});
	</script>
	<table>
		<thead>
			<tr>
				<th>#번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>수정일</th>
			</tr>
		</thead>
		<c:forEach items="${list}" var="board">
			<tr>
				<td><c:out value="${board.bno}" /></td>
				<td><a href='/controller/board/get?bno=<c:out value="${board.bno}"/>'> <c:out value="${board.title}" /></a></td>
				<td><c:out value="${board.writer}" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${ board.regdate}" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${ board.updateDate}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>