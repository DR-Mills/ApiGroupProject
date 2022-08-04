<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
	<link href="style.css" rel="stylesheet">
	
<title>Your Favorites</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<header>
		<h1>DNA Pairing</h1>
	</header>

	<%-- msg div is for errors / testing / and displaying messages to the user without javascript --%>
	<c:if test="${ msg != null }">
		<div class="msg"><c:out value="${ msg }"></c:out></div>
	</c:if>
	
	<%-- content area --%>
	<div class="container">
	<table class="table">
	<thead>
    <tr>
      <th scope="col">Brand</th>
      <th scope="col">Rating</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="favorite" items="${favorite}">
    <tr>
      <td>${favorite.title}</td>
      <td><fmt:formatNumber  maxFractionDigits="0" value="${100*favorite.averageRating}">
      </fmt:formatNumber></td>
      <td>${favorite.description}</td>
      <td>${favorite.price}</td>
      <td><form action="/deleteFavorite">
      <input type="hidden" value="${favorite.id}" name="id">
     <input class="btn" type="submit" value ="Delete">     
      </form>
      </td>
    </tr>
	</c:forEach>
	</table>
	</div>

<a href="/">
Click here to go home
</a>

</body>
</html>