<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Two Cat Tracks</title>
</head>
<jsp:include page="homebutton.jsp" />
<h1>Add A New Record</h1>

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
	color: #333;
}

h1 {
	font-size: 4em;
	color: #545F95;
	text-transform: uppercase;
	letter-spacing: 5px;
	margin-bottom: 20px;
	text-shadow: 2px 2px 8px rgba(255, 255, 255, 0.8);
}

p {
	font-family: 'Quicksand', sans-serif;
	font-size: 2.5em;
	color: #ffe4e1;
	margin-bottom: 40px;
}
</style>

<body>
	<form action="newRecord.do" method="post">
		<label for="artist">Artist:</label> <input type="text" name="artist"
			id="artist" required /><br> 
		<label for="albumTitle">Album Title:</label> <input type="text" name="albumTitle" id="albumTitle" required /><br>

		<label for="color">Color:</label> <input type="text" name="color"id="color" /><br> 
		
		<label for="condition">Condition:</label> <input type="text" name="condition" id="condition" /><br> 
			
		<label for="duration">Duration:</label> <input type="text" name="duration" id="duration" /><br> 
		
		<label for="format">Format:</label> <input type="text" name="format" id="format" /><br> 
		
		<label for="genre">Genre:</label> <input type="text" name="genre" id="genre" /><br> 
		
		<label for="label">Label:</label> <input type="text" name="label" id="label" /><br>

		<label for="price">Price:</label> <input type="number" name="price" id="price" step="0.01" required /><br> 
			
		<label for="releaseYear">Release Year:</label> <input type="number" name="releaseYear" id="releaseYear" required /><br> 
		
		<label for="releaseType">Release Type:</label> <input type="text" name="releaseType" id="releaseType" /><br> 
		
		<label for="stock">Stock:</label> <input type="number" name="stock" id="stock" required /><br> 
			
		<label for="specialFeatures">Special Features:</label> <input type="text" name="specialFeatures" id="specialFeatures" /><br> 
			
		<label for="trackCount">Track Count:</label> <input type="number" name="trackCount" id="trackCount" required /><br> 
			
		<label for="tracklist">Tracklist:</label> <input type="text" name="tracklist" id="tracklist" /><br>

		<button type="submit">Add Record</button>
	</form>

</body>
</html>