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

	<link
	href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;500&display=swap"
	rel="stylesheet">
	
	<style>
	html, body {
	height: 100%;
	margin: 0;
	overflow: auto;
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

h2 {
font-size: 2.5em;
color: #ffe4e1;
marging-bottom: 20px;
}

ul {
list-style-type: none;
padding: 0;
}

ul li {
font-size: 1em;
color: #ffe4e1;
background-color: rgba(0, 0, 0, 0.6);
margin: 10px auto;
padding: 10px;
border-radius: 5px;
width: 60%;
box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
}
	
p {
	font-family: 'Quicksand', sans-serif;
	font-size: 2.5em;
	color: #ffe4e1;
	margin-bottom: 40px;
}

/* Buttons */
button, input[type="submit"] {
	font-family: 'Quicksand', sans-serif;
	font-size: 1.2em;
	color: #fff;
	background-color: #ff3d3d;
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	margin: 10px;
	cursor: pointer;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
	transition: all 0.3s eas-in-out;
}

button:hover, input[type="submit"]:hover {
	background-color: #ff6f6f;
	transform: translateY(-3px);
	box-shadow: 0 6px 8px rgba(0, 0, 0, 0.3);
}


	</style>
	

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
				<li><strong>Tracklist:</strong>
					<ul>
					<c:forEach var="track" items="${record.tracklist}">
					<li>${track}</li>
					</c:forEach>
					</ul>
					</li>
			</ul>

</body>
</html>