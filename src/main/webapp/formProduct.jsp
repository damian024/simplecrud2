<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <jsp:useBean id="storage"
        class="products.Services.StorageService"
        scope="application" />
    <jsp:useBean id="product" class="products.Domain.Product" scope="session" />

<form action="addProduct.jsp">

  Name :<input type="text"  name="name" value="${product.name}" /><br />
  Description :<input type="text" name="description" value="${product.description}" /><br />
  Price :<input type="text"  name="price" value="${product.price}" /><br />
  <input type="submit" value=" OK ">
  
</form>
</body>
</html>