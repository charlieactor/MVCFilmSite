<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Movie</title>
</head>
<body>
	<h2>Edit ${film.title}!</h2>
	<form action="editMovie.do" method="POST">
		<input type="hidden" name="id" value="${film.id}"
		<input type="text" name="title" value="${film.title}">
		<input type="text" name="description" value="${film.description}">
		<input type="number" name="releaseYear" value="${film.releaseYear}">
		<input type="number" name="rentalDuration" value="${film.rentalDuration}">
		<input type="text" name="rentalRate" value="${film.rentalRate}">
		<input type="number" name="length" value="${film.length}">
		<input type="text" name="replacementCost" value="${film.replacementCost}">
		<input type="text" name="rating" value="${film.rating}">
		<input type="text" name="cast" value="${film.cast}">
		<input type="number" name="languageId" value="${film.languageId}">
		<input type="text" name="specialFeatures" value="${film.specialFeatures}">
	</form>
</body>
</html>