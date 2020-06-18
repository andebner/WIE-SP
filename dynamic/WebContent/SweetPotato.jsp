<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="def.*" %>

<!DOCTYPE html>

<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Food@Home Sweet Potato Fries">
	<meta name="author" content="Group BI05">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="icon" href= "MiniLogo.png">
	<title>Food@Home - Sweet Potato Fries</title>

</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#">
			<img src="Logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
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

     <%
     
     	Class.forName("org.postgresql.Driver");
     
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
	
	<div class="container pt-3">
		<h3 style="color: yellowgreen">SWEET POTATO FRIES</h3>
		<div class="row">
			<div class="col-4">
				<img alt="Sweet Potato Fries" src="Snack.jpeg" style="width:100%" height="250">
			</div>
			<div class="col-4">
				<h5 class="w-100"><b>Ingredients</b></h5>
				<ul>
					<li>2 sweet potatoes</li>
					<li>2 tb corn starch</li>
					<li>1 tb olive oil</li>
					<li>Paprika</li>
					<li>Garlic Powder</li>
					<li>Brown Sugar</li>
					<li>Salt and Pepper to taste</li>
				</ul>
			</div>
			
	<%
	
		double price = 5;
	
	%>
			
			<div class="col-4 pt-5">
				<button onclick="document.location = 'Order.jsp?price=<%= price %>'" class="btn btn-outline-info px-4 py-1 mr-2" >Order Here!</button>
			</div>
		</div>
		<div class="row pt-2">
			<h5 class="w-100"><b>Preparation</b></h5>
			<ol>
				<li>Peel sweet potatoes.</li>
				<li>Cut into fries.</li>
				<li>Place fries into bowl of water and soak for 1 hour.</li>
				<li>Preheat oven to 220°C.</li>
				<li>After 1 hour rinse and dry off the fries.</li>
				<li>Add corn starch and mix, then add oil, pepper, paprika, garlic and brown sugar and make sure to coat all fries.</li>
				<li>Lay out all the fries on baking paper and bake for 15 minutes.</li>
				<li>Flip the fries and bake for an additional 10-15 minutes.</li>
				<li>Sprinkle on salt and enjoy!</li>
			</ol>
		</div>
		<div class="row pt-2">
			<h5><b>Video Tutorial</b></h5>
		</div>
		<div class="row pt-2">
			<span class="pb-3 pl-2">If you want to see the video tutorial click here!</span>		
		</div>
		<div class="row pt-2">
			<iframe width="715" height="402" src="https://www.youtube.com/embed/uyLRnDeAsGA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
	</div>

</body>

</html>