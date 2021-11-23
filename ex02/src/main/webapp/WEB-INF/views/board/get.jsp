<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>Board Read Page</h1>
	</div>
	<form role="form" method="post">
		<label>Bno</label> <input name='bno' value='<c:out value="${board.bno}"/>' readonly="readonly">
		<label>Title</label> <input name='title' value='<c:out value="${board.title}"/>' readonly="readonly">
		<label>Text Area</label>
		<textarea rows="3" name='content' readonly="readonly">
			<c:out value="${board.content}" />
		</textarea>
		<label>Writer</label> <input name='writer' value='<c:out value="${board.writer}"/>' readonly="readonly">
		<button onclick="location.href='/board/modify?bno=${board.bno}'">Modify</button>
		<button onclick="location.href='/board/list'">List</button>
	</form>
</body>
</html>