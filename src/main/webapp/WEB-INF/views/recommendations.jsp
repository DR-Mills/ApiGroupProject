<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recommendations</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>
<h1>DNA Pairing</h1>

Recommendations:
<div class="container"> 

<c:forEach var="wine" items="${recommendList}">


<div class="row">
<div class="col-md-3">
<img src="${wine.imageUrl }">
</div>

<div class="col-md-9">


<h5><b>Brand:</b> ${wine.title}</h5><br>
<h5><b>Description:</b> ${wine.description }</h5><br>
<h5><b>Price:</b> ${wine.price }</h5>
<h5><b>Average Rating:</b> ${wine.averageRating*100}</h5> 
<a href="/saveToFavorites?id=${wine.id}&title=${wine.title}&averageRating=${wine.averageRating}&description=${wine.description}&price=${wine.price}"><input type=button value="Add to Favorites" /></a>

</div>



</div>
</c:forEach>

</div>
<br>

<div id="favorites" class="giveMeSomeSpace">
		<div class="text-center">
			<a class="button-6" href="/favorites">See Favorite List</a>&nbsp; &nbsp;<a
				class="button-7" href="/">Back to Home Page</a>
		</div>
	</div>

</body>
</html>