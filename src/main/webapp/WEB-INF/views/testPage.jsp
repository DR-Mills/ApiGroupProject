<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Title</title>
</head>
<body>
<h1>hello world</h1>

<div style="color: red; font-size: 20px;">
${ msg }
</div>

<%-- test for DishPairings --%>
Dish Pairing API Call Here (if active):<br>
<c:forEach items="${ dishList }" var="food">
	${ food }<br>
</c:forEach>

<%-- test for WinePairings --%>
Wine Pairing API Call Here (if active):<br>
Wines:<br>
<c:forEach items="${ winePerDish.pairedWines }" var="wine">
	${ wine }	<br>
</c:forEach>
Text: ${ winePerDish.pairingText }<br>

<%-- List of Wines that Return DishPairings --%>
<h3>List of Wines that Return DishPairings</h3>
${ mapList }



</body>
</html>