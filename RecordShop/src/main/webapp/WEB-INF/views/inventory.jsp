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


	<form action="newRecord.do" method="post">
		<h2>Create New Record</h2>
		<input type="text" name="artist" placeholder="Artist" required /> <input
			type="text" name="albumTitle" placeholder="Album Title" required />
		<input type="text" name="genre" placeholder="Genre" /> <input
			type="text" name="format" placeholder="Format" /> <input
			type="number" name="stock" placeholder="Stock" />
		<button type="submit">Add Record</button>
	</form>

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

							<td><a href="result.do?id=${record.id}">
									${record.artist} </a></td>
							<td>${record.albumTitle}</td>
							<td>${record.genre}</td>
							<td>${record.format}</td>
							<td>${record.stock}</td>
							<td>
								<form action="updateRecord.do?id=${record.id}" method="post"
									style="display: inline;">
									<input type="text" name="artist" value="${record.artist}"
										required /> 
										<input type="text" name="albumTitle"
										value="${record.albumTitle}" required /> 
										<input type="text"
										name="genre" value="${record.genre}" /> 
										<input type="text"
										name="format" value="${record.format}" /> 
										<input
										type="number" name="stock" value="${record.stock}" />
									<button type="submit">Update</button>
								</form>
								<a href="deleteRecord.do?id=${record.id}" onclick="return confirm('Are you sure you want to delete this record from the Inventory?');">
								Delete</a>
							</td>
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