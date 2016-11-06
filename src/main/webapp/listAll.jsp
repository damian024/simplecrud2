<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script type = "text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of all products</title>
</head>
<body>
<div class="container">
<jsp:useBean id="storage" class="products.Services.StorageService" scope="application" />
<table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Price</th>
        <th>Actions</th>
      </tr>
    </thead>
<c:forEach items="${storage.getAll()}" var="item">
	<tr>
		<td>${item.getName()}</td>
		<td>${item.getDescription()}</td>
		<td>${item.getPrice() }</td>
		<td><a href="formProduct.jsp?id=${item.getId()}"><img src="http://www.msqq.com/d/file/icon/2014-04-01/e07e2380f4f0cfa74e567228d784f886.png" alt='mod'></a> 
		<a href="deleteProduct.jsp?id=${item.getId()}"><img src="https://cdn4.iconfinder.com/data/icons/32x32-free-design-icons/32/Close.png" alt= 'del'></a>
	</tr>
</c:forEach>
</table>

  <a href="formProduct.jsp">Add another person</a>
</div>

</body>
</html>