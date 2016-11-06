<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="product" class="products.Domain.Product" scope="session" />

<jsp:useBean id="storage" class="products.Services.StorageService" scope="application" />

<jsp:setProperty name="product" property="*"/>




<% 
  storage.Add(product);
%>

<p>You have added product to your list: </p>
<p>Name :  <jsp:getProperty name="product" property="name"></jsp:getProperty> </p>
<p>Name : <jsp:getProperty name="product" property="price"></jsp:getProperty> </p>

<p>  <a href="listAll.jsp">Show all persons</a>
</p>
</body>
</html>