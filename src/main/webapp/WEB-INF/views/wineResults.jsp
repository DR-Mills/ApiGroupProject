<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>
</head>
<body>
<header>
		<h1>Website Name/Logo</h1>
	</header>

	<%-- Results for WinePairings --%>

	<br> Wines (click item to see recommendations):
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