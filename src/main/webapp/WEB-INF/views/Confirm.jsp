<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="UserHome.jsp"></jsp:include>
 <div class="container">
<table class="table table-bordered" cellspacing="2" align="center">
<thead>
 
<tr bgcolor="grey">
<th>Cart Id</th> 
<th>Price</th> 
<th>Quantity</th> 
</tr>
</thead>


<c:forEach items="${cartList}" var="cart">
<c:set var="price" value="${price+price}"/>
<c:out value="${price}"/>

<tr>
<td>${cart.proId}</td>
<td>${cart.price}</td>
<td>${cart.quantity}</td>

<td><img src="<c:url value="/resources/${cart.proId}.jpg"/>" width="50px" height="50px"/></td>

<td>
<a href="<c:url value="buynow/${cart.cartId}"/>">Buy now</a>
</td>
</tr>
</c:forEach>
</table>

</div>
</body>
</html>