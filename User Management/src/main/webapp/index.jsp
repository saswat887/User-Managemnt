<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<%@ include file="components/allcss.jsp" %>
</head>
<body>
	<%@ include file="components/navbar.jsp" %>
<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="5000">
      <img src="image/building1.jpg" class="d-block w-100" height="500px"alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="image/building2.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="image/building3.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
  </div>
</div>
</body>
</html>