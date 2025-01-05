<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Two Cats Tracks</title>

<link
	href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;500&display=swap"
	rel="stylesheet">


<style>
html, body {
	height: 200%;
	margin: 0;
	overflow: hidden;
}

body {
	font-family: 'Quicksand', sans-serif;
	background: linear-gradient(#F7DF95, #2A2A42);
	text-align: center;
	padding: 40px;
	color: #545F95;
}

h1 {
	font-size: 4em;
	color: ##545F95;
	text-transform: uppercase;
	letter-spacing: 5px;
	margin-bottom: 20px;
	text-shadow: 2px 2px 8px rgba(255, 255, 255, 0.8);
}

h3, label {
	color: #D0DEC7;
}

p {
	font-family: 'Quicksand', sans-serif;
	font-size: 2.5em;
	color: #E93F25;
	margin-bottom: 40px;
}

form {
	font-family: 'Quicksand', sans-serif;
	background-color: #2A2A42;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 10px rgba(255, 255, 255, 0.8);
	max-width: 400px;
	margin: 0 auto;
}

fieldset {
	border: none;
}

/* Buttons */
button, input[type="submit"] {
	font-family: 'Quicksand', sans-serif;
	font-size: 1.2em;
	color: #fff;
	background-color: #E93F25;
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	margin: 10px;
	cursor: pointer;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
	transition: all 0.3s eas-in-out;
}

button:hover, input[type="submit"]:hover {
	background-color: #F7DF95;
	transform: translateY(-3px);
	box-shadow: 0 6px 8px rgba(0, 0, 0, 0.3);
}

input[type="number"] {
	font-size: 1em;
	padding: 5px;
	margin-right: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}
</style>

</head>
<body>
	<h1>Two Cat Tracks</h1>
	<p>Purr-fect tunes, Just for you!</p>

	<form action="result.do" method="GET">
		<fieldset>
			<legend>
				<h3>Shop for Record by ID</h3>
			</legend>
			<label for="id">Enter ID:</label> <input type="number" name="id"
				id="id"> <input type="submit" value="Search">
		</fieldset>
	</form>

	<form action="inventory.do" method="get">
		<input type="submit" value="View Inventory">
	</form>

</body>

</html>