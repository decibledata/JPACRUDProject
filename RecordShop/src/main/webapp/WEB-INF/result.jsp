<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Two Cat Tracks</title>
</head>
<body>
	<jsp:include page="homebutton.jsp" />
	<h1>Record ID Result</h1>

	<!-- Message -->

	<p>${message}</p>

	<!-- Film Details. With Conditional Tag -->
<%-- 	<c:choose>
		<c:when test="${not empty film}"> --%>
			<h2>Record Details:</h2>
			<ul>
				<li><strong>ID:</strong> ${recordStore.id}</li>
				<li><strong>Artist:</strong> ${recordStore.artist}</li>
				<li><strong>Album Title:</strong> ${recordStore.albumTitle}</li>
			</ul>

			<%-- <!--DELETE FORM -->
			<form action="deleteFilm.do" method="post">
				<input type="hidden" name="id" value="${film.id}" /> <input
					type="submit" value="Delete">
			</form --%>>

	<%-- 		<!-- EDIT FORM -->
			<form action="editFilm.do" method="post">
				<input type="hidden" name="id" value="${film.id}" /> <input
					type="submit" value="Edit">
			</form>

		</c:when>
		<c:otherwise>
			<p>No Film found with selected ID.</p>
		</c:otherwise>
	</c:choose> --%>
</body>
</html>