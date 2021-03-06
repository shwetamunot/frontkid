<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<jsp:include page="Header.jsp"></jsp:include>
<div class="container">
<h2><i>Kids Fun</i></h2>

<div id="mycar" class="carousel slide" data-ride="carousel">

<ol class="carousel-indicators">
<li data-target="#mycar" data-slide-to="0"class="active"></li>
<li data-target="#mycar" data-slide-to="1"></li>
<li data-target="#mycar" data-slide-to="2"></li>
</ol>

<div class="carousel-inner">

<div class="item active">
<img class="img-rounded" class="img-responsive center-block" 
src="resources/images/img1.jpg" style="width:100%">
</div>

<div class="item">
<img class="img-rounded" class="img-responsive center-block"
src="resources/images/img2.jpg" style="width:100%">
</div>

<div class="item">
<img class="img-rounded" class="img-responsive center-block"
src="resources/images/img3.jpg" style="width:100%">
</div>

</div>

<a class="left carousel-control" href="#mycar" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>

<span class="sr-only">previous</span>
</a>

<a class="right carousel-control" href="#mycar" data-slide="next">

<span class="glyphicon glyphicon-chevron-right"></span>
<span class="sr-only">next</span>
</a>

</div>
</div>
</body>
</html>
