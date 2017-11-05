<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<td rowspan="5">
<img src="<c:url value="/resources/${product.proId}.jpg"/>"/>
</td>
</tr>
<tr>
<td>Product ID:${product.proId}</td>
</tr>

<tr>
<td>Product Name:${product.proName}</td>
</tr>

<tr>
<td>Product Description:${product.proDesc}</td>
</tr>


<tr>
<td>Product Price:${product.price}</td>
</tr>

</table>
</body>
</html>