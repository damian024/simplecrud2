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
  <script type="text/javascript" >
  function submitForm(id)
  {
	  var submited = false;
	  $('#del').find('input[name="id"]').each(function (){
          if($(this).attr("value") == id && !submited){
        	  	submited = true;
				$(this).parent().submit();
          }
      });
  }
  
  $( document ).ready(function() {
	    $('.alert').each(function (){
	    	var x = $(this);
			setTimeout(function () {x.slideUp("slow");},5000);
	    })
	});
  </script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of all products</title>
</head>
<body>
<div class="container">
<jsp:useBean id="product" class="products.Domain.Product" scope="session" />
<jsp:useBean id="storage" class="products.Services.StorageService" scope="application" />
<jsp:setProperty name="product" property="*"/>

<c:choose>
	<c:when test="${!empty param.name && !empty param.description && !empty param.price && empty param.used}">
		<c:choose>
			<c:when test="${not empty param.id}">
				<% storage.Modify(product);%>
				<div class="alert alert-success fade-in">
 					 <strong>Success!</strong> Product has been added successful.
				</div>
			</c:when>
			<c:otherwise>
				<% storage.Add(product);%>
				<div class="alert alert-success fade-in">
 					 <strong>Success!</strong> Product has been edited successful.
				</div>
			</c:otherwise>
		</c:choose>
	</c:when>
	<c:when test = "${empty param.name && empty param.description && empty param.price &&  not empty param.id}">
		<% storage.Delete(product); %>
		<div class="alert alert-success fade-in">
 				<strong>Success!</strong> Product has been deleted successful.
			</div>
	</c:when>
</c:choose>

<table class="table table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Price</th>
        <th>Actions</th>
      </tr>
    </thead>

<c:set var="list" value="${storage.getAll()}"></c:set>
<c:forEach items="${list}" var="item">
	<tr>
		<td>${item.getName()}</td>
		<td>${item.getDescription()}</td>
		<td>${item.getPrice() }</td>
		<td><a href="modifyForm.jsp?id=${item.getId()}"><img src="http://www.msqq.com/d/file/icon/2014-04-01/e07e2380f4f0cfa74e567228d784f886.png" alt='mod'></a>
		<a href="javascript:submitForm(${item.getId()})"><img src="https://cdn4.iconfinder.com/data/icons/32x32-free-design-icons/32/Close.png" alt='mod'></a>  
		<form action="listAll.jsp" method="post" id="del">
			<input type="hidden"  name="id" value="${item.getId()}">
		</form></td>
	</tr>
</c:forEach>
</table>
  <a href="addForm.jsp" class="btn btn-info">Add another person</a>
</div>

</body>
</html>