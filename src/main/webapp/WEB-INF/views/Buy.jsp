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
<form:form action="${pageContext.request.contextPath}/orderconfirmed" modelAttribute="cart">
<table>
<tr>
<td rowspan="5">
<img src="<c:url value="/resources/${cart.proId}.jpg"/>" width="300px" height="300px"/>
</td>
</tr>
<tr>
<td>Cart Id:${cart.cartId}</td>
</tr>
<tr>
<td>Product Id:${cart.proId}</td>
</tr>
<tr>
<td>Price:${cart.price}</td>
</tr>
<tr>
<td>Quantity:${cart.quantity}</td>
</tr>
</table>

<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"> </label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Order Confirm</button>
  </div>
</div>


</form:form>

</body>
</html>