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

	<%-- Results for WinePairings --%>


	<br> Wines (click item to see recommendations):

	Great choice! Here are some wines that will pair well with your meal:
	<br> Wines:

	<br><br>
	
	<c:forEach items="${ wineList.pairedWines }" var="wine">
	<a href="/recommendations?wine=${wine}">${ wine }</a>	
		<br>
	</c:forEach>
	<br>
	${ wineList.pairingText }
	<br>
	

</body>
</html>