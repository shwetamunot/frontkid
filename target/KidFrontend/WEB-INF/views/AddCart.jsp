<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
<center><form:form action="${pageContext.request.contextPath}/confirm" modelAttribute="cart" class="form-horizontal">

<div class="container">
	<div class="row"> 
<fieldset>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">CART ID</label>  
  <div class="col-md-4">
  <form:input id="textinput" path="cartId" value= "${cart.cartId}" placeholder="Enter your cart Id" class="form-control input-md" required="" type="text"/>
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Product Id</label>  
  <div class="col-md-4">
  <form:input id="textinput" path="proId" value= "${product.proId}" placeholder="Enter your product Id" class="form-control input-md" required="" type="text"/>
  <span class="help-block"> </span>  
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Price</label>  
  <div class="col-md-4">
  <form:input id="textinput" path="price" value="${product.price}" placeholder="Enter your price" class="form-control input-md" required="" type="text"/>
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Quantity</label>  
  <div class="col-md-4">
  <form:input id="textinput" path="quantity" placeholder="Enter your Quantity" class="form-control input-md" required="" type="text"/>
  <span class="help-block"> </span>  
  </div>
</div>


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"> </label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Confirm</button>
  </div>
</div>
</fieldset>
</div>
</div>
</form:form>
</center>
</body>
</html>