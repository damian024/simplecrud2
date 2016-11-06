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

<jsp:useBean id="product" class="products.Domain.Product" scope="session" />
<jsp:useBean id="storage" class="products.Services.StorageService" scope="application" />
<jsp:setProperty name="product" property="*"/>

<c:choose>
	<c:when test="${!empty param.name && !empty param.description && !empty param.price }">
		<c:choose>
			<c:when test="${not empty param.id}">
				<% storage.Modify(product);%>
				<p>cosiek lata2</p>
			</c:when>
			<c:otherwise>
				<% storage.Add(product);%>
				<p>cosiek lata</p>
			</c:otherwise>
		</c:choose>
	</c:when>
</c:choose>
<div id="browse_app">
  <a class="btn btn-large btn-info" href="listAll.jsp">Show all products</a>
</div>
</body>
</html>