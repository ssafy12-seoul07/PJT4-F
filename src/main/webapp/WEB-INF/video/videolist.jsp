<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#video-list {
	border-collapse: collapse;
	width: 100%;
}

#video-list td, #video-list th {
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
	<table id="video-list">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>운동부위</th>
				<th>채널이름</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${videoList}" var="video" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td><a href="review?action=videoDetail&videoId=${video.id}">${video.title}</a></td>
					<td>${video.part}</td>
					<td>${video.channelName}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>	
</body>
</html>