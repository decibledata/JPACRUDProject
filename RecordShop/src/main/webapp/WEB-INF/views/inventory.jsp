<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inventory - Two Cat Tracks</title>
<link
	href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;500&display=swap"
	rel="stylesheet">
<style>
body {
	font-family: 'Quicksand', sans-serif;
	background: linear-gradient(#F7DF95, #2A2A42);
	color: #ffe4e1;
	margin: 0;
	padding: 20px;
	text-align: center;
}

h1 {
	font-size: 2.5em;
	color: #545F95;
	margin-bottom: 20px;
}

table {
	margin: 20px auto;
	border-collapse: collapse;
	width: 80%;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
}

table th, table td {
	padding: 10px;
	text-align: center;
	border: 1px solid #333;
}

table th {
	background-color: #E93F25;
	color: #fff;
	text-transform: uppercase;
}

table td {
	background-color: #2A2A42;
}

a {
	color: #ff3d3d;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

form {
	margin: 20px auto;
	background-color: #2A2A42;
	padding: 15px;
	border-radius: 5px;
	width: 80%;
}

form input[type="text"], form input[type="number"] {
	padding: 8px;
	margin: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

form button {
	font-family: 'Quicksand', sans-serif;
	font-size: 1em;
	color: #fff;
	background-color: #E93F25;
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	cursor: pointer;
	transition: all 0.3s ease-in-out;
	outline: none;
	box-shadow: none;
}

form button:hover {
	background-color: #ff6f6f;
}

form button:focus {
	outline: none;
	box-shadow: none;
}
</style>


</head>
<body>
	<jsp:include page="homebutton.jsp" />
	<form action="newRecord.do" method="GET">
		<button type="submit">Go to Creation Page</button>
	</form>

	<h1>Inventory</h1>


	<table border="1">
		<thead>
			<tr>
				<th>ID:</th>
				<th>Artist:</th>
				<th>Album:</th>
				<th>Genre:</th>
				<th>Format:</th>
				<th>Stock:</th>
				<th>Update Info:</th>
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
								<form:form action="updateRecord.do?id=${record.id}" method="post"
									style="display: inline;">
									<input type="text" name="artist" value="${record.artist}"
										required /> <input type="text" name="albumTitle"
										value="${record.albumTitle}" required /> <input type="text"
										name="genre" value="${record.genre}" /> <input type="text"
										name="format" value="${record.format}" /> <input
										type="number" name="stock" value="${record.stock}" />
									<button type="submit">Update</button>
								</form:form> 
								<a href="deleteRecord.do?id=${record.id}"
								onclick="return confirm('Are you sure you want to delete this record from the Inventory?');">
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