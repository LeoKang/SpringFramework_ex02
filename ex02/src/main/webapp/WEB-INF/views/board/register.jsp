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
		<h1>Board Register</h1>
	</div>
	<form role="form" action="/controller/board/register" method="post">
		<label>Title</label><input name='title'> <label>Text Area</label>
		<textarea rows="3" name='content'></textarea>
		<label>Writer</label><input name='writer'>
		<button type="submit">Submit</button>
		<button type="reset">Reset</button>
	</form>
</body>
</html>