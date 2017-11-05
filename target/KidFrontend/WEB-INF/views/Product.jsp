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

<form:form action="AddProduct" modelAttribute="product" enctype="multipart/form-data" class="form-horizontal">
<div class="container">
	<div class="row"> 
<fieldset>
<center><h3>Insert Form</h3></center>
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Product Id</label>  
  <div class="col-md-4">
  <form:input path="proId" id="textinput" placeholder="Enter Product Id" class="form-control input-md" required=""/>
  <span class="help-block"> </span>  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Product Name</label>  
  <div class="col-md-4">
  <form:input path="proName" id="textinput" placeholder="Enter Product Name" class="form-control input-md" required=""/>
  <span class="help-block"> </span>  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Product Description</label>  
  <div class="col-md-4">
  <form:input path="proDesc" id="textinput" placeholder="Enter Category Description" class="form-control input-md" required=""/>
  <span class="help-block"> </span>  
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Stock</label>  
  <div class="col-md-4">
  <form:input path="stock" id="textinput" placeholder="Enter stock" class="form-control input-md" required=""/>
  <span class="help-block"> </span>  
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Product Price</label>  
  <div class="col-md-4">
  <form:input path="price" id="textinput" placeholder="Enter product price" class="form-control input-md" required=""/>
  <span class="help-block"> </span>  
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Category ID</label>  
  <div class="col-md-4">
<form:select path="cId" id="textinput" class="form-control input-md" required="">
				<form:option value="0" label="---Category---"/>
				<form:options items="${categoryList}"/>
			</form:select>
  <span class="help-block"> </span>  
  </div>
</div>



<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Supplier ID</label>  
  <div class="col-md-4">
 <form:select path="sId" id="textinput" class="form-control input-md" required="">
				<form:option value="0" label="---Supplier---"/>
				<form:options items="${supplierList}"/>
			</form:select>
  <span class="help-block"> </span>  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Product Images</label>  
  <div class="col-md-4">
  <form:input path="pimge" id="textinput" type="file" placeholder="Enter product Image" class="form-control input-md" required=""/>
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
<th>Product Id</th> 
<th>Product Name</th> 
<th>Product Description</th> 
<th>Stock</th> 
<th>Price</th> 
<th>Category ID</th> 
<th>Supplier ID</th> 
<th>Operation</th> 
<th>Operation</th> 
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
<a href="productDesc/${product.proId}">
<img src="<c:url value="/resources/${product.proId}.jpg"/>" width="50px" height="50px"/>
</a>
</td>
<!--  <td><a href="<c:url value="${pageContext.request.contextPath}/UpdateCategory/${category.cId}"/>">UPDATE</a></td>-->
<td><a href="${pageContext.request.contextPath}/UpdateProduct/${product.proId}">UPDATE</a></td>
<td><a href="${pageContext.request.contextPath}/DeleteProduct/${product.proId}">DELETE</a></td>
</tr>
</c:forEach>
</tbody>

</table>
</div>
</form:form>

</body>
</html>