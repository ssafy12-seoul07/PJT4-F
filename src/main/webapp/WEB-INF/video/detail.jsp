<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	<c:forEach items="${reviewList}" var="review">
		<tr>
			<tr>
				<td>${review.id}</td>
				<td><a href="review?action=detail&id=${review.id}">${review.title}</a></td>
				<td>${review.writer}</td>
				<td>${review.likeCnt}</td>
				<td>${review.dislikeCnt}</td>
				<td>${review.regDate}</td>
			</tr>
		</tr>
	</c:forEach>
</body>
</html>