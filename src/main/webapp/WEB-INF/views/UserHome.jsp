<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--  <head> 
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 --><body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
<form:form action="" modelAttribute="category">
    <ul class="nav navbar-nav">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
        
        <div class="form-group">
        <c:forEach items="${categoryList}" var="category">
        <li><a href="productbycategory/${category.cId}">${category.cname}</a></li>
        </c:forEach>
      <span class="help-block"></span>
      </div>
      
          </ul>
      </li>
       </ul>
  </form:form>
  </div>
</nav>
</body>
</html>