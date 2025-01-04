<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Record Details</title>
</head>
<body>
	<jsp:include page="homebutton.jsp" />
	<h1>Record ID Result</h1>

	<p>${message}</p>

<%-- 
	<c:choose>
		<c:when test="${not empty film}"> --%>
			<h2>Record Details:</h2>
			<ul>
				<li><strong>ID:</strong> ${record.id}</li>
				<li><strong>Artist:</strong> ${record.artist}</li>
				<li><strong>Album Title:</strong> ${record.albumTitle}</li>
				<li><strong>Color:</strong> ${ecord.color}</li>
				<li><strong>Condition:</strong> ${record.condition}</li>
				<li><strong>Duration:</strong> ${record.duration}</li>
				<li><strong>Format:</strong> ${record.format}</li>
				<li><strong>Genre:</strong> ${record.genre}</li>
				<li><strong>Label:</strong> ${record.label}</li>
				<li><strong>Price:</strong> ${record.price}</li>
				<li><strong>Release Year:</strong> ${record.releaseYear}</li>
				<li><strong>Release Type:</strong> ${record.releaseType}</li>
				<li><strong>Stock:</strong> ${record.stock}</li>
				<li><strong>Special Features:</strong>
					${record.specialFeatures}</li>
				<li><strong>Track Count:</strong> ${record.trackCount}</li>
				<li><strong>Tracklist:</strong> ${record.tracklist}</li>
			</ul>
<%-- 		</c:when>
		<c:otherwise>
			<p>No Film found with selected ID.</p>
		</c:otherwise>
	</c:choose> --%>
</body>
</html>