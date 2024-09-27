<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 수정</title>
</head>
<body>
	<h2>리뷰 수정</h2>
	<form action="review" method="POST">
		<input type="hidden" name="action" value="update">
		<input type="hidden" name="id" value="${review.id }">
		<div>
			제목 : <input type="text" name="title" value="${review.title }">
		</div>
		<div>
			내용 : <textarea rows="10" cols="30" name="content">${review.content}</textarea>
		</div>
		<div>
			<input type="submit" value="수정">
		</div>
	</form>
</body>
</html>