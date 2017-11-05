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

<jsp:include page="Header.jsp"></jsp:include>
<form:form action="AddUser" modelAttribute="user" class="form-horizontal">
<div class="container">
	<div class="row"> 
<fieldset>

<!-- Form Name -->

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">User Id</label>  
  <div class="col-md-4">
  <form:input path="useId" id="textinput" placeholder="Enter User Id" class="form-control input-md" required=""/>
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Name</label>  
  <div class="col-md-4">
  <form:input id="textinput" path="name" placeholder="Enter Name" class="form-control input-md" required="" type="text"/>
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Address</label>  
  <div class="col-md-4">
  <form:input id="textinput" path="address" placeholder="Enter Address" class="form-control input-md" required="" type="text"/>
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Phone number</label>  
  <div class="col-md-4">
  <form:input id="textinput" path="phno" placeholder="Enter Phone number" class="form-control input-md" required="" type="text"/>
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Country</label>  
  <div class="col-md-4">
  <form:input id="textinput" path="country" placeholder="Enter Country" class="form-control input-md" required="" type="text"/>
  <span class="help-block"> </span>  
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Email</label>  
  <div class="col-md-4">
  <form:input id="textinput" path="email" placeholder="Enter your Email Id" class="form-control input-md" required="" type="text"/>
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Role</label>  
  <div class="col-md-4">
  <form:input id="textinput" path="role" placeholder="Enter Role" class="form-control input-md" required="" type="text"/>
  <span class="help-block"> </span>  
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Username</label>  
  <div class="col-md-4">
  <form:input id="textinput" path="username" placeholder="Enter your username" class="form-control input-md" required="" type="text"/>
  <span class="help-block"> </span>  
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Password</label>  
  <div class="col-md-4">
  <form:input id="textinput" path="password" placeholder="Enter your Password" class="form-control input-md" required="" type="password"/>
  <span class="help-block"> </span>  
  </div>
</div>


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"> </label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Submit</button>
  </div>
</div>

</fieldset>
  
	</div>
</div>


<table cellspacing="2" align="center">
<tr bgcolor="lightblue">
<td>User Id</td> 
<td>User Name</td> 
<td>User Address</td> 
<td>User Phone no</td> 
<td>User Country</td> 
<td>User Email</td> 
<td>User Role</td> 
<td>User Username</td> 
<td>User Password</td> 

<td>Operation</td>
</tr>
<c:forEach items="${userList}" var="user">
<tr bgcolor="grey">
<td>${user.useId}</td>
<td>${user.name}</td>
<td>${user.address}</td>
<td>${user.phno}</td>
<td>${user.country}</td>
<td>${user.email}</td>
<td>${user.role}</td>
<td>${user.username}</td>
<td>${user.password}</td>

<td><a href="<c:url value="UpdateUser/${user.useId}"/>">UPDATE</a></td>
<td><a href="<c:url value="DeleteUser/${user.useId}"/>">DELETE</a></td>
</tr>
</c:forEach>
</table>
</form:form>
</body>
</html>