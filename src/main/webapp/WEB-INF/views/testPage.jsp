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

<c:forEach items="${ dishPerWine.pairings }" var="food">
	${ food }
</c:forEach>

</body>
</html>