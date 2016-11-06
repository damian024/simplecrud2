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
    <style type="text/css">
  html, body{height:100%; margin:0;padding:0}
 
	.container-fluid{
	  height:100%;
	  display:table;
	  width: 100%;
	  padding: 0;
	}
	 
	.row-fluid {height: 100%; display:table-cell; vertical-align: middle;}
	 
	.centering {
	  float:none;
	  margin:0 auto;
	}
	
	.margin-base-vertical {
		margin: 90px 0;
	}
	.padding-base-bottom{
		padding-bottom : 50px;
	}
	html {
		background: url(http://hdwallpaperbackgrounds.net/wp-content/uploads/2016/07/white-background-5.jpg) no-repeat center center fixed; 
		-webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover;
	}
	.panel {
		background-color: rgba(255, 255, 255, 0.9);
	}
	body {
		padding-top: 20px;
		font-size: 16px;
		background: transparent;
	}
	h1 {
		font-weight: 400;
		font-size: 40px;
	}
	.userbox{
		position:fixed;
		right:0;
		padding-right:15px;
		display: inline-block;
		text-align: center;
		color: black;
	}
	function Logout()
  {
	  $('#logout').submit();
  }
	
  </style>
  
    <script type = "text/javascript">
    function validateForm() {
    	setTimeout(function (){$('.alert').each(function (){
	    	var c = $(this).slideUp("slow");
	    	console.log("cosiek");
	 });},5000);
	    var regexp = "^[0-9]+(\.[0-9]{1,2})?$";
	    var x = $('#usr').val();
	    function WarningAlert(text)
	    {
	    	$('.container').prepend($('<div class="alert alert-warning">'+
	  	    	 // '<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;'+'</' + 'a' + '>'+
		    	  '<strong>Warning!'+'</' + 'strong' + '> ' + text +'</' + 'div>'));
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
	    	
	}
  </script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of all products</title>
</head>
<body>
<div class="userbox">
	<form action="LogoutServlet" method="post" id="logout"></form>
	<div><a href="javascript:Logout()"><img src="http://icons.iconarchive.com/icons/saki/nuoveXT-2/48/Actions-stop-icon.png" alt='logout'></a></div>
	<div><div>Logged as:</div><b><%= session.getAttribute("user") %></b></div>
</div> 
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 panel panel-default">
			<h1 class="margin-base-vertical">Adding new item</h1>
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
			    <div class="col-md-4 col-md-offset-4 padding-base-bottom">
			  <button type="submit" value=" OK " class="btn btn-default">Submit</button>
			  </div>
			</form>
		</div>
	</div>
			
</div>
</body>
</html>