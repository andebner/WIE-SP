<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="def.*" %>

<!DOCTYPE html>

<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Food@Home Homepage">
	<meta name="author" content="Group BI05">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="icon" href= "MiniLogo.png">
	<title>Food@Home</title>

</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="Food@Home.jsp">
			<img src="Logo.png" width="30" height="30" class="d-inline-block align-top" alt="">Food@Home</a>
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
     
     <%
     
     	Class.forName("com.mysql.jdbc.Driver");
     
     	if(session.getAttribute("uid") == null) {
     
     %>
      
      	<button onclick="document.location = 'Account.jsp'" class="btn btn-outline-success px-4 py-1 mr-2" >Sign Up</button>
      	<button onclick="document.location = 'Login.jsp'" class="btn btn-success px-4 py-1 mr-2" >Login</button>
   	 
   	 <%
   	 
     	} else {
   	 
   	 %>
   	 
   	 	<button onclick="document.location = 'Account.jsp'" class = "btn btn-outline-success px-4 py-1 mr-2">Modify Account</button>
   	 
   	 <%
   	 
     	}
   	 
   	 %>
   	 
   	 <form class="form-inline my-2 my-lg-0 pl-3">
   	   <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
   	 </form>
  			</div>
	</nav>
	
	<div id="foodshow" class="carousel slide carousel-fade container" data-ride="carousel">

  <ul class="carousel-indicators">
    <li data-target="#foodshow" data-slide-to="0" class="active"></li>
    <li data-target="foodshow" data-slide-to="1"></li>
    <li data-target="#foodshow" data-slide-to="2"></li>
    <li data-target="#foodshow" data-slide-to="3"></li>
    <li data-target="#foodshow" data-slide-to="4"></li>
  </ul>

  <div class="carousel-inner pt-3">
    <div class="carousel-item active">
      <img src="BubbleTea.jpg" alt="Drinks" width="1100" height="500">
     	<div class="carousel-caption">
   			<h3>Bubble Tea</h3>
    		<p>Drinks</p>
		</div>
    </div>
    <div class="carousel-item">
      <img src="Appetizer.jpeg" alt="Appetizer" width="1100" height="500">
		<div class="carousel-caption">
   			<h3>Salmon Crackers</h3>
    		<p>Appetizer</p>
		</div>
    </div>
    <div class="carousel-item">
      <img src="Pizza.jpeg" alt="Main Course" width="1100" height="500">
    	<div class="carousel-caption">
   			<h3>Homemade Pizza</h3>
    		<p>Main Course</p>
		</div>
    </div>
    <div class="carousel-item">
      <img src="Cupcakes.jpeg" alt="Dessert" width="1100" height="500">
    	<div class="carousel-caption">
   			<h3>Strawberry Cupcakes</h3>
    		<p>Dessert</p>
		</div>
    </div>
    <div class="carousel-item">
      <img src="Snack.jpeg" alt="Snack" width="1100" height="500">
    	<div class="carousel-caption">
   			<h3>Sweet Potato Fries</h3>
    		<p>Snack</p>
		</div>
    </div>
  </div>

  <a class="carousel-control-prev" href="#foodshow" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#foodshow" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>

</div>
	

</body>

</html>