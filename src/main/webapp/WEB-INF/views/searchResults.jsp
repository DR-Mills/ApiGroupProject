<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>
<style>
* {
	-webkit-font-smoothing: antialiased;
	font-family: Helvetica Neue, Helvetica, Ariel, Sans-Serif;
	text-align: center;
	}
	h1 {
	color: black;
	text-align: center;
	}
	body {
	background-color: #E0B0FF;
	font-size: 24px;
	}
</style>
</head>
<body>

	<header>
		<h1>DNA Pairing</h1>
	</header>


	<%-- Results for DishPairings --%>
	A variety of dishes will work with this wine, including:
	<br>
	<c:forEach var="food" items="${dishList }">
				${food}
</c:forEach>
	<br>

</body>
</html>