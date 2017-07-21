<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Look Up Film By ID</title>
</head>
<body>
  <h3>Search Films by ID</h3>
  <form action="getTitle.do" method="GET">
	<input type="text" name="filmId">
	<input type="submit" value="Look Up Film">
  </form>
  <br>
  <h3>Search Films by Keyword</h3>
  <form action="searchTitle.do" method="GET">
	<input type="text" name="search">
	<input type="submit" value="Search Films">
  </form>
  
  <c:choose>
  <c:when test="${filmTitle != null}">
    <h3>${filmTitle.title}</h3>
    <ul>
    	  <li>${filmTitle.description}</li>
    	  <li>${filmTitle.rating}</li>
    	  <li>${filmTitle.length}</li>
    	  <li>${filmTitle.releaseYear}</li>
    	  <li>${filmTitle.rentalDuration}</li>
    	  <li>${filmTitle.rentalRate}</li>
    	  <li>${filmTitle.replacementCost}</li>
    	  <li>${filmTitle.id}</li>
    </ul>
    <h3>${filmTitle.title} Cast</h3>
    <ul>
    	 <c:forEach items = "${filmTitle.cast}" var = "actor">
    <li>${actor.firstName} ${actor.lastName}</li>
    	 </c:forEach>
    </ul>
    
  </c:when>
  <c:when test="${filmList != null}">
    <c:forEach items = "${filmList}" var = "film">
    	 <h2><c:out value="${film.title}" /></h2>
    <ul>
      <li><c:out value="${film.description}" /></li>
      <li><c:out value="${film.rating}" /></li>
    </ul>
       <h3>${film.title} Cast</h3>
        <ul>
    	 <c:forEach items = "${film.cast}" var = "actor">
         <li>${actor.firstName} ${actor.lastName}</li>
    	 </c:forEach>
       </ul>
      <br>
    </c:forEach>
  </c:when>
</c:choose>

</body>
</html>