<%@ page language="java" contentType="test/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="Header.jsp"></jsp:include>
<%---<%@ include file="header.jsp"%>---%>
</head>
<body>
<div class="container"></div>
<h2><i>Fast Racer!</i></h2>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarousel" data-slider-to="0" class=active"></li>
<li data-target="#myCarousel" data-slider-to="1" class=active"></li>
<li data-target="#myCarousel" data-slider-to="2" class=active"></li>
</ol>
<div class="mycarousel-inner">
<div class="item active">
<img class="img-rounded" class="img-responsive center-block"
src="resources/car1.jpg" style="width:100%">
</div>
<div class="item ">
<img class="img-rounded" class="img-responsive center-block"
src="resources/car2.jpg" style="width:100%">
</div>
<div class="item">
<img class="img-rounded" class="img-responsive center-block"
src="resources/car3.jpg" style="width:100%">
</div>
<a class="left carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-right"></span>
<span class="sr-only">Next</span>
</a>

</body>
</html> 
