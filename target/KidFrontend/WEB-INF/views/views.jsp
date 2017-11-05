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
<th>Product Id</th> 
<th>Product Name</th> 
<th>Product Description</th> 
<th>Stock</th> 
<th>Price</th> 
<th>Category ID</th> 
<th>Supplier ID</th> 
</tr>
</thead>
<tbody>

<c:forEach items="${productList}" var="product">
<tr bgcolor="white">
<td>${product.proId}</td>
<td>${product.proName}</td>
<td>${product.proDesc}</td>

<td>${product.stock}</td>
<td>${product.price}</td>

<td>${product.cId}</td>

<td>${product.sId}</td>
<td>
<img src="<c:url value="/resources/${product.proId}.jpg"/>" width="50px" height="50px"/>
</td>
<td><a href="<c:url value="/addtocart/${product.proId}"/>">AddToCart</a></td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>