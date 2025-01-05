<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<form action="index.do" method="get">
	<button type="submit">Home</button>
</form>

<style>
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
	background-color: #ff6f6f;
	transform: translateY(-3px);
	box-shadow: 0 6px 8px rgba(0, 0, 0, 0.3);
}
</style>