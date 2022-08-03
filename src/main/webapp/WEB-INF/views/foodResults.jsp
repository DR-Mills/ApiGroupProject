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
		<h1>DNA Pairing</h1>
	</header>

	<%-- msg div is for errors / testing / and displaying messages to the user without javascript --%>
	<c:if test="${ msg != null }">
		<div class="msg"><c:out value="${ msg }"></c:out></div>
	</c:if>

	<%-- Results for DishPairings --%>

	Dish Pairings:

	A variety of dishes will work with this wine, including:

	<br>
	<c:forEach var="food" items="${dishList }">
				${food}
</c:forEach>
	<br>

</body>
</html>