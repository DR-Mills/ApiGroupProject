<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Wine Search App - Home</title>
<style>
	* {
	-webkit-font-smoothing: antialiased;
	font-family: Helvetica Neue, Helvetica, Ariel, Sans-Serif;
	}
	h1 {
	color: black;
	text-align: center;
	}
	body {
	background-color: #E0B0FF;
	}
	form {
	background-color: transparent;
	border: none;
	color: black;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: incline-block;
	font-size: 24px;
	}
	input {
	background: transparent;
	float: right;
	padding: 14px 0;
	margin-right: 25px;
	width: 220px;
	}
	select{
	background-color: gray;
	}
</style>
</head>
<body>
	<header>
		<h1>DNA Pairing</h1>
	</header>
	<div id="searches">
	<form action="/searchResults">
		<label for="wineSearch">Search by Popular Wines (results = types of food...
			meat "pairings")</label> 
			<select id="wineSearch" name="wineSearch">
			<option value="pinot_blanc">Dry White - Pinot Blanc NOPE</option>
			<option value="chardonnay">Dry White - Chardonnay</option>
			<option value="sauvignon_blanc">Dry White - Sauvignon Blanc</option>
			<option value="grechetto">White - Grechetto NOPE</option>
			<option value="semillon">White - Semillon NOPE</option>
			<option value="pinot_noir">Dry Red - Pinot Noir</option>
			<option value="red_burgundy">Dry Red - Red Burgundy</option>
			<option value="cabernet_sauvignon">Dry Red - Cabernet Sauvignon</option>
			<option value="marsala">Red - Marsala NOPE</option>
			<option value="concord_wine">Red - Concord NOPE</option>
			<option value="sparkling_rose">Rose - Sparkling Rose</option>
		</select>
		<input type="submit" value="Search"/>
		</form>
		<br>
		
		<form action="/wineResults">
		<label for="wineSearch">Search by Popular Food (results = types of wine..."pairedWines")</label> 
			<select id="foodSearch" name="foodSearch">
			<option value="steak">Steak</option>
			<option value="chicken">Chicken</option>
			<option value="pork">Pork</option>
			<option value="tuna">Tuna - Fresh Loin</option>
			<option value="shrimp">Shrimp</option>
			<option value="chocolate">Chocolate</option>
			<option value="gorgonzola">Bleu Cheese - Gorgonzola</option>
			<option value="brie">Brie Cheese</option>
			<option value="fruit">Fresh Fruit</option>
			<option value="pizza">Pizza</option>
			<option value="barbecue">Barbecue</option>
		</select>
		<input type="submit" value="Search" />
		</form>
		<br>
		
	</div>

	<div id="favorites"></div>
</body>
</html>