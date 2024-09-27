<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비디오 상세</title>
<style>
#review-list {
	border-collapse: collapse;
	width: 100%;
}

#review-list td, #review-list th {
	border: 1px solid black;
	padding: 5px;
}

a {
	text-decoration: none;
	color: #00AE68;
}

a:hover {
	color: #000000;
}
</style>
</head>
<body>
	<div>제목 : ${video.title }</div>
	<div>운동 부위 : ${video.part }</div>
	<div>채널 이름 : ${video.channelName }</div>
	<div>
		<a href="${video.url}">바로가기</a>
	</div>
	<table id="review-list">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>내용</th>
				<th>작성일시</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${reviewList}" var="review">
				<tr>
					<td>${review.id}</td>
					<td><a href="review?action=detail&id=${review.id}">${review.title}</a></td>
					<td>${review.writer}</td>
					<td>${review.content}</td>
					<td>${review.regDate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


	<a href="review?action=writeform&videoId=${video.id}">리뷰 추가</a>
</body>
</html>