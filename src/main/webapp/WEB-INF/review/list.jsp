<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 목록</title>
</head>
<body>
	<table>
		<tr>
			<th>ID</th>
			<th>제목</th>
			<th>쓰니</th>
			<th>조회수</th>
			<th>등록일</th>
		</tr>
		<c:forEach items="${list}" var="review">
			<tr>
				<td>${review.id}</td>
				<td><a href="review?action=detail&id=${review.id}">${review.title}</a></td>
				<td>${review.writer}</td>
				<td>${review.likeCnt}</td>
				<td>${review.dislikeCnt}</td>
				<td>${review.regDate}</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>