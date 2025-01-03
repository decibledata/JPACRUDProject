<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Two Cats Tracks</title>
</head>
<body>
	<h1>Welcome to Two Cat Tracks</h1>
	<p>Purr-fect tunes, Just for you!</p>

	<form action="findrecordbyid.do" method="get">
		<fieldset>
			<legend>
				<h3>Shop for Record by ID</h3>
			</legend>
			<label for="id">Enter ID:</label> <input type="number" name="id"
				id="id"> <input type="submit" value="Search">
		</fieldset>
	</form>
	
	<form action="inventory.jsp" method="get">
		<input type="submit" value="View Inventory">
	</form>

	</body>
	
</html>