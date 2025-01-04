<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inventory - Two Cat Tracks</title>
</head>
<body>
	<jsp:include page="homebutton.jsp" />
	<h1>Inventory</h1>
	<p>Two Cat Tracks Inventory</p>

	<table border="1">
		<thead>
			<tr>
				<th>ID:</th>
				<th>Artist:</th>
				<th>Album:</th>
				<th>Genre:</th>
				<th>Format:</th>
				<th>Stock:</th>
			</tr>
		</thead>

		<tbody>
			<c:choose>
				<c:when test="${not empty store}">
					<c:forEach items="${store}" var="record">
						<tr>
							<td>${record.id}</td>
							
							<td>
							<a href="result.jsp?id=${record.id}">
							${record.artist}
							</a>
							</td>	
									<td>${record.albumTitle}</td>
									<td>${record.genre}</td>
									<td>${record.format}</td>
									<td>${record.stock}</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="6">No Records Available.</td>.
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
</body>
</html>