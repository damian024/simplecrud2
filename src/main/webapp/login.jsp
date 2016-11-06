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
		.margin-base-vertical {
			margin: 90px 0;
		}
		html {
			background: url(http://b3.pinger.pl/981b2bf2df479c3b0141c0049779150a/background.jpg) no-repeat center center fixed; 
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
		.padding-base-bottom{
		padding-bottom : 50px;
	}
 </style>
<title>Login Page</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 panel panel-default">
			<h1 class="margin-base-vertical">Login page</h1>
				<form action="LoginServlet" method="post" class="margin-base-vertical">
				<div class="form-group">
				     <label for="usr">Name:</label>
				     <input type="text" name="user" class="form-control" id="usr">
				  </div>
				  <div class="form-group">
				    <label for="pass">Password:</label>
				    <input type="text" name="pwd" class="form-control" id="pass">
				  </div>
				  <div class="col-md-6 col-md-offset-6 padding-base-bottom">
				  <button type="submit" value=" OK " class="btn btn-default">Login</button>  
				  </div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>