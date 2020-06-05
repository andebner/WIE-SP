<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="def.*" %>

<!DOCTYPE html>

<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Food@Home Account">
	<meta name="author" content="Group BI05">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="icon" href= "MiniLogo.png">
	<title>Food@Home - Account</title>

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
     	
     	String title = "";
     	String button = "";
     
     	if(session.getAttribute("uid") == null) {
     		
 			title = "Sign Up";
 			button = "Sign Up";
     		
     		%>
     		
     			<button onclick="document.location = 'Login.jsp'" class="btn btn-success px-4 py-1 mr-2" >Login</button>
     			
     		<%
     		
     	} else {
     		
     		title = "Modify Account";
     		button = "Update";
     		
     		%>
     		
 				<button onclick="document.location = 'Logout.jsp'" class="btn btn-danger px-4 py-1 mr-2" >Logout</button>
 			
 			<%
     		
     	}
    
    %>  
      
   	 
   	 <form action="Save.jsp" class="form-inline my-2 my-lg-0 pl-3">
   	   <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
   	 </form>
  			</div>
	</nav>

	<div class="container">
		<h3 style="color: yellowgreen"><%= title %></h3>

	<%
	
		Main m = new Main();
		User u = new User();
		
		if(session.getAttribute("uid") != null) {

			button = "Update";
			
			u = m.getUser(Integer.parseInt(session.getAttribute("uid").toString()));

		}
  
	%>
		
		<form action="Save.jsp" class="needs-validation">
				<script src="form-validation.js"></script>
			<div class="row">
				<label for="firstName">First name</label>
				<input type="text" id="firstName" placeholder="Marco" name="firstname" class="w-100 form-control" value="<%= u.firstname %>" required>
   				<div class="invalid-feedback">Valid first name is required</div>
   			</div>
   			<div class="row">
   				<label for="lastName">Last name</label>
				<input type="text" id="lastName" placeholder="Bianchi" name ="lastname" class="w-100 form-control" value = "<%= u.lastname %>" required>
    			<div class="invalid-feedback">Valid last name is required</div>
   			</div>
   			<div class="row">
   				<label for="email">Email</label>
				<input type="email" id="email" placeholder="youremail@example.com" name="email" class="w-100 form-control" value = "<%= u.email %>" required>
				<div class="invalid-feedback">Valid e-mail is required</div>
   			</div>
   			<div class="row">
   				<label for="tel">Mobile</label>
   				<input type="tel" id="tel" placeholder="+39**********" max="13" name="mobile" class="w-100 form-control" value = "<%= u.mobile %>">
   			</div>
   			<div class="row">
   				<div class="col-4">
   					<label for="zip">ZIP</label>
   					<input type="number" id="zip" placeholder="39100" name="zip" class="w-100 form-control" value = "<%= u.zip %>" required>
   					<div class="invalid-feedback">Valid ZIP is required</div>
   				</div>
   				<div class="col-4">
   					<label for="street">Street</label>
   					<input type="text" id="street" class="w-100 form-control" name="street" value = "<%= u.street %>" required>
   					<div class="invalid-feedback">Valid street is required</div>
   				</div>
   				<div class="col-4">
   					<label for="hn">House Number</label>
   					<input type="number" id="hn" class="w-100 form-control" name="housenumber" value = "<%= u.housenumber %>" required>
   					<div class="invalid-feedback">Valid house number is required</div>
   				</div>
   			</div>
   			<div class="row">
   				<div class="col-4">
   					<label for="cardnumber">Credit Card Number</label>
   					<input type="number" id="cardnumber" class="w-100 form-control" name="creditcardnumber" value = "<%= u.creditcardnumber %>" required>
   					<div class="invalid-feedback">Valid credit card number is required</div>
   				</div>
   				<div class="col-4">
   					<label for="ed">Credit Card Expiry Date</label>
   					<div class="row" id="ed w-100">
   						<div class="col">
   							<input type="number" class="form-control" placeholder="12" name="ccexpirem" value = "<%= u.ccexpirem %>" required>
   						</div>
   						<div class="col">
   							<input type="number" class="form-control" placeholder="2020" name="ccexpirey" value = "<%= u.ccexpirey %>" required>
   						</div>
   					</div>
   					<div class="invalid-feedback">Valid expiry date is required</div>
   				</div>
   				<div class="col-4">
   					<label for="code">Credit Card CVV-Code</label>
   					<input type="password" id="code" placeholder="***" name="cvv" class="w-100 form-control" value = "<%= u.cvv %>" required>
   					<div class="invalid-feedback">Valid code is required</div>
   				</div>
   			</div>
   			<div class="row">
				<label for="username">Username</label>
				<input type="text" id="username" class="w-100 form-control" name="username" value="<%= u.username %>" required>
   				<div class="invalid-feedback">Valid username is required</div>
   			</div>
   			<div class="row">
   				<label for="password">Password</label>
   				<input type="password" id="password" class="w-100 form-control" name="password" value = "<%= u.password %>" required>
   				<div class="invalid-feedback">Valid password is required</div>
   			</div>
   			<input name="id" type="hidden" value="<%=u.id%>">
   			<div class="row pt-3">

   				<button type="submit" class="btn btn-outline-success px-4 py-1 mr-2" ><%= button %></button>
   			</div>
		</form>
	

	
	</div>

</body>

</html>