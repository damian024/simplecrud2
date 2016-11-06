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
    <jsp:useBean id="storage"
        class="products.Services.StorageService"
        scope="application" />
    <jsp:useBean id="product" class="products.Domain.Product" scope="session" />
    
   <c:set var="id" value="${param.id}"></c:set>
   <c:set var="product" value="${storage.GetWithId(id)}"></c:set>

<form action="listAll.jsp" method="post">

<input type="hidden"  name="id" value="${param.id}">
	<div class="form-group">
      <label for="usr">Name:</label>
      <input type="text" name="name" class="form-control" id="usr" value="${product.getName() }">
    </div>
    <div class="form-group">
      <label for="usr">Description:</label>
      <input type="text" name="description" class="form-control" id="usr" value="${product.getDescription()}">
    </div>
    <div class="form-group">
      <label for="usr">Price:</label>
      <input type="text" name="price" class="form-control" id="usr" value="${product.getPrice()}">
    </div>
  <button type="submit" value=" OK " class="btn btn-default">Submit</button>
  
</form>
  
</body>
</html>