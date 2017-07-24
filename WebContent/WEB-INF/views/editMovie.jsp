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
		<input type="hidden" name="id" value="${film.id}">
		Title: <input type="text" name="title" value="${film.title}"><br>
		Description: <input type="text" name="description" value="${film.description}"><br>
		Release Year: <input type="number" name="releaseYear" value="${film.releaseYear}"><br>
		Rental Duration: <input type="number" name="rentalDuration" value="${film.rentalDuration}"><br>
		Rental Rate: <input type="text" name="rentalRate" value="${film.rentalRate}"><br>
		Length (minutes): <input type="number" name="length" value="${film.length}"><br>
		Replacement Cost: <input type="text" name="replacementCost" value="${film.replacementCost}"><br>
		Rating: <input type="text" name="rating" value="${film.rating}"><br>
		Special Features: <input type="text" name="specialFeatures" value="${film.specialFeatures}"><br>
		<input type="submit" value="submit">
	</form>
		
		<br>
		<h3>Delete this film</h3>
		<form action="deleteMovie.do" method="POST">
			<input type="hidden" name="id" value="${film.id}">
			<input type="submit" value="Delete this film">
		</form>
</body>
</html>