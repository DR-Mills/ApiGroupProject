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
<title>Wine Search App - Home</title>
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

	<%-- search area --%>
	<div class="container">
		<%-- food pairing search --%>
		<div class="food-pairing">
			<form action="/foodResults" method="post">
				<div class="row">
					<h3>Find Food Pairings</h3>
					<div class="col-md-6">
						<select class="form-control" id="wineSearch" name="wine">
							<option value="" disabled selected hidden>Select a Wine</option>
							<c:forEach items="${ wineList }" var="wine">
								<option value="${ wine.wineCode }">${ wine.wineName }</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-md-2">
						<input type="submit" value="Search" />
					</div>
				</div>
			</form>
		</div>

		<%-- wine pairing search --%>
		<div class="wine-pairing">
			<form action="/wineResults" method="post">
				<div class="row">
					<h3>Find Wine Pairings</h3>
					<div class="col-md-6">
						<select class="form-control" id="wineSearch" name="food">
							<option value="" disabled selected hidden>Select Popular Foods, Ingredients, or Cuisines</option>
							<option value="steak">Steak</option>
							<option value="chicken">Chicken</option>
							<option value="pork">Pork</option>
							<option value="tuna">Tuna</option>
							<option value="shrimp">Shrimp</option>
							<option value="chocolate">Chocolate</option>
							<option value="gorgonzola">Bleu Cheese - Gorgonzola</option>
							<option value="brie">Brie Cheese</option>
							<option value="fruit">Fresh Fruit</option>
							<option value="pizza">Pizza</option>
							<option value="barbecue">Barbecue</option>
							<option value="pasta">Pasta</option>
							<option value="italian">Italian</option>
						</select>
					</div>
					<div class="col-md-2">
						<input type="submit" value="Search" />
					</div>
				</div>
			</form>
		</div>
	</div>
	<div id="favorites"></div>
	<img src="img_Grape.jpeg">
	<img src="img_Food.jpeg">
</body>
</html>