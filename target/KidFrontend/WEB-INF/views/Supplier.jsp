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
<jsp:include page="Home.jsp"></jsp:include>

<form:form action="${pageContext.request.contextPath}/AddSupplier" modelAttribute="supplier" class="form-horizontal">

<div class="container">
	<div class="row"> 
<fieldset>
<center><h3>Insert Supplier Details</h3></center>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Supplier Id</label>  
  <div class="col-md-4">
  <form:input path="sId" id="textinput" placeholder="Enter Supplier Id" class="form-control input-md" required=""/>
  <span class="help-block"> </span>  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Supplier Name</label>  
  <div class="col-md-4">
  <form:input path="sName" id="textinput" placeholder="Enter Supplier Name" class="form-control input-md" required=""/>
  <span class="help-block"> </span>  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Supplier Address</label>  
  <div class="col-md-4">
  <form:input path="sAddress" id="textinput" placeholder="Enter Supplier Address" class="form-control input-md" required=""/>
  <span class="help-block"> </span>  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Phone number</label>  
  <div class="col-md-4">
  <form:input path="phoneno" id="textinput" placeholder="Enter Supplier number" class="form-control input-md" required=""/>
  <span class="help-block"> </span>  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Product Id</label>  
  <div class="col-md-4">
  <form:input path="proId" id="textinput" placeholder="Enter Product Id" class="form-control input-md" required=""/>
  <span class="help-block"> </span>  
  </div>
</div>

<center>
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"> </label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">ADD</button>
  </div>
</div>
</center>

</fieldset>
	</div>
</div>

<div class="container">
<table class="table table-bordered" cellspacing="2" align="center">
<thead>
<tr bgcolor="grey">
<th>Supplier Id</th> 
<th>Supplier Name</th> 
<th>Supplier Address</th> 
<th>Supplier Phone no</th> 
<th>Supplier ProductId</th>  
<th>Operation</th>
<th>Operation</th>
</tr>
</thead>
<tbody>
<c:forEach items="${supplierList}" var="supplier">
<tr bgcolor="white">
<td>${supplier.sId}</td>
<td>${supplier.sName}</td>
<td>${supplier.sAddress}</td>
<td>${supplier.phoneno}</td>
<td>${supplier.proId}</td>

<td><a href="${pageContext.request.contextPath}/UpdateSupplier/${supplier.sId}">UPDATE</a></td>
<td><a href="${pageContext.request.contextPath}/DeleteSupplier/${supplier.sId}">DELETE</a></td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</form:form>
</body>
</html>