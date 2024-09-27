<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비디오 상세</title>
</head>
<body>
	<div>${video.title }</div>
	<div>${video.part }</div>
	<div>${video.channelName }</div>
	<div>${video.url }</div>
	<table>
	<c:forEach items="${reviewList}" var="review">
		<tr>
				<td>${review.id}</td>
				<td><a href="review?action=detail&id=${review.id}">${review.title}</a></td>
				<td>${review.writer}</td>
				<td>${review.content}</td>
				<td>${review.regDate}</td>
		</tr>
	</c:forEach>
	</table>
	
	
	<a href = "review?action=writeform&videoId=${video.id}">리뷰 추가</a>
</body>
</html>