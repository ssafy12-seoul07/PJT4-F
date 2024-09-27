<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c"	 uri = "jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 등록</title>
</head>
<body>
	<h2>리뷰 등록</h2>
	<form action="review" method="POST">
		<input type="hidden" name="action" value="write">
		<input type="hidden" name="videoId" value="${videoId}">
		<div>
			제목 : <input type="text" name="title">
		</div>
		<div>
			작성자 : <input type="text" name="writer" value="익명">
		</div>
		<div>
			내용 : <textarea rows="10" cols="30" name="content"></textarea>
		</div>
		<div>
			<input type="submit" value="리뷰 등록">
		</div>
	</form>
</body>
</html>