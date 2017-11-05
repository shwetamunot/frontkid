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
<title>Insert Category</title>
</head>
<body>
<jsp:include page="Home.jsp"></jsp:include>

<form:form action="${pageContext.request.contextPath}/AddCategory" modelAttribute="category" class="form-horizontal" resolveContext="true" resolveMapping="true">
<div class="container">
	<div class="row"> 
<fieldset>
<center><h3>Insert Form</h3></center>
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Category Id</label>  
  <div class="col-md-4">
  <form:input path="cId" id="textinput" placeholder="Enter Category Id" class="form-control input-md" required=""/>
  <span class="help-block"> </span>  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Category Name</label>  
  <div class="col-md-4">
  <form:input path="cname" id="textinput" placeholder="Enter Category Name" class="form-control input-md" required=""/>
  <span class="help-block"> </span>  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Description</label>  
  <div class="col-md-4">
  <form:input path="cdesc" id="textinput" placeholder="Enter Category Description" class="form-control input-md" required=""/>
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
<th>Category Id</th> 
<th>Category Name</th> 
<th>Category Description</th> 
<th>Operation</th> 
<th>Operation</th> 
</tr>
</thead>
<tbody>

<c:forEach items="${categoryList}" var="category">
<tr bgcolor="white">
<td>${category.cId}</td>
<td>${category.cname}</td>
<td>${category.cdesc}</td>

<!--  <td><a href="<c:url value="${pageContext.request.contextPath}/UpdateCategory/${category.cId}"/>">UPDATE</a></td>-->
<td><a href="${pageContext.request.contextPath}/UpdateCategory/${category.cId}">UPDATE</a></td>
<td><a href="${pageContext.request.contextPath}/DeleteCategory/${category.cId}">DELETE</a></td>
</tr>
</c:forEach>
</tbody>

</table>
</div>
</form:form>
</body>
</html>