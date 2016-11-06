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
    <script type = "text/javascript">
    function validateForm() {
	    var regexp = "^[0-9]+(\.[0-9]{1,2})?$";
	    var x = $('#usr').val();
	    function WarningAlert(text)
	    {
	    	$('body').prepend($('<div class="alert alert-warning">'+
	  	    	  '<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;'+'</' + 'a' + '>'+
		    	  '<strong>Warning!'+'</' + 'strong' + '>' + text +'</' + 'div>'));
	    }
	    
	    if (x == null || x == "") {
	    	WarningAlert("Name cannot be empty.");
	        return false;
	    }
	    var x = $('#descp').val();
	    if (x == null || x == "") {
	    	WarningAlert("Description cannot be empty.")
	        return false;
	    }
	    var x = $('#pri').val();
	    
	    if (x == null || x == "") {
	    	WarningAlert("Price cannot be empty.");
	        return false;
	    }
	    if(!x.match(regexp)){
	    	WarningAlert("Price must be specified in the correct format");
		    return false;
	    }
	    	
	    $('.alert').each(function (){
	    	var x = $(this);
			setTimeout(function () {x.slideUp("slow");},5000);
	    });
	}
  </script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of all products</title>
</head>
<body>
<div class="container">
    <jsp:useBean id="storage"
        class="com.kreatorek.products.Services.StorageService"
        scope="application" />
    <jsp:useBean id="product" class="com.kreatorek.products.Domain.Product" scope="session" />

<form action="listAll.jsp" method="post" onsubmit="return validateForm()">

	<div class="form-group">
      <label for="usr">Name:</label>
      <input type="text" name="name" class="form-control" id="usr">
    </div>
    <div class="form-group">
      <label for="descp">Description:</label>
      <input type="text" name="description" class="form-control" id="descp">
    </div>
    <div class="form-group">
      <label for="pri">Price:</label>
      <input type="text" name="price" class="form-control" id="pri">
    </div>
  <button type="submit" value=" OK " class="btn btn-default">Submit</button>
  
</form>
</div>
</body>
</html>