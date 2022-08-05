<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
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
	<br>
	<div id="favorites">
		<div class="text-center">
			<a class="button-6" href="/favorites">See Favorite List</a>&nbsp; &nbsp; <a
				class="button-7" href="/">Back to Home Page</a>
		</div>
	</div>
	

</body>
</html>