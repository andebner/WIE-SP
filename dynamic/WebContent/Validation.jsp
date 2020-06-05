<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="def.*" %>

<!DOCTYPE html>

<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Food@Home Validation">
	<meta name="author" content="Group BI05">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="icon" href= "MiniLogo.png">
	<title>Food@Home - Validation</title>
	<style type="text/css">
		#align {
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			text-align: center;
		}
	</style>
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#">
			<img src="Logo.png" width="30" height="30" class="d-inline-block align-top" alt="Logo">
			Food@Home</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
      			<li class="nav-item">
        			<a class="nav-link" href="Food@Home.jsp">Home</a>
      			</li>
      			<li class="nav-item dropdown">
       				 	<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Recipes</a>
       				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
        				<a class="dropdown-item" href="Drinks.jsp">Drinks</a>
       					<a class="dropdown-item" href="Appetizer.jsp">Appetizer</a>
         				<a class="dropdown-item" href="MainCourse.jsp">Main Course</a>
         				<a class="dropdown-item" href="Dessert.jsp">Dessert</a>
         				<a class="dropdown-item" href="Snack.jsp">Snack</a>
        			</div>
    			</li>
      	<li class="nav-item">
     	   <a class="nav-link" href="AboutUs.jsp" tabindex="-1">About Us</a>
   	 	</li>
      </ul>

   	 <form class="form-inline my-2 my-lg-0 pl-3">
   	   <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
   	 </form>
  			</div>
	</nav>


	<div id="align">
	
		<%
			Class.forName("org.postgresql.Driver");
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			Main m = new Main();
		
			if(m.validateLogin(username, password) == false) {
			
		%>
		
			<div id="warning" class="container pb-3">
				<div class="alert alert-danger">
	    			<strong>Wrong username or password!</strong>
	  			</div>
	  		</div>
	  		<button class="btn btn-outline-danger" onclick="document.location = 'Login.jsp'">Back</button>
		
		<%
		
   			} else {
				
   				String welcome = "";
   				
   				User u = new User();
   				
   				u = m.getByName(username);
   				
   				welcome = "Welcome " + u.firstname + "!";
   				
   				session.setAttribute("uid", u.id); 
   				
		%>
		
			<h3 class="pb-3" style="color: yellowgreen"><%= welcome %></h3>
			<button class="btn btn-outline-success" onclick="document.location = 'Food@Home.jsp'">to the Recipes</button>
		
		<%
   			}
		%>
	
	</div>
	
</body>

</html>