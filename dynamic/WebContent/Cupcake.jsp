<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="def.*" %>

<!DOCTYPE html>

<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Food@Home Strawberry Cupcake">
	<meta name="author" content="Group BI05">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="icon" href= "MiniLogo.png">
	<title>Food@Home - Strawberry Cupcake</title>

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
		<h3 style="color: yellowgreen">STRAWBERRY CUPCAKES</h3>
		<div class="row">
			<div class="col-4">
				<img alt="Strawberry Cupcakes" src="Cupcakes.jpeg" style="width:100%" height="250">
			</div>
			<div class="col-4">
				<h5 class="w-100"><b>Ingredients</b></h5>
				<div><b>For the Cupcakes:</b></div>
				<ul>
					<li>420 g granulated sugar</li>
					<li>180 g butter</li>
					<li>480 g fresh whole strawberries pureed</li>
					<li>3 large eggs</li>
					<li>720 g all-purpose flour</li>
					<li>1 tsp baking powder</li>
					<li>1 tsp baking soda</li>
					<li>salt</li>
					<li>180 g sour cream room temperature</li>
					<li>60 g vegetable oil</li>
					<li>1 tsp vanilla extract</li>
					<li>1 tsp strawberry extract</li>
				</ul>
				<div><b>For the Buttercream:</b></div>
				<ul>
					<li>840 g powdered sugar</li>
					<li>240 g  butter</li>
					<li>60 g pureed fresh strawberries</li>
					<li>1/2 tsp strawberry extract</li>
				</ul>
			</div>
			
	<%
	
		double price = 12;
	
	%>
			
			<div class="col-4 pt-5">
				<button onclick="document.location = 'Order.jsp?price=<%= price %>'" class="btn btn-outline-info px-4 py-1 mr-2" >Order Here!</button>
			</div>
		</div>
		<div class="row pt-2">
			<h5 class="w-100"><b>Preparation</b></h5>
			<div><b>For the Cupcakes:</b></div>
			<ol>
				<li>Preheat your oven to 180 degrees. Line two 12-well muffin pans with 20 to 24 cupcake liners.</li>
				<li>In the bowl of your stand mixer fitted with the whisk attachment, add the granulated sugar and butter and cream together on medium-high speed for about 6 minutes, until very pale yellow and fluffy.</li>
				<li>Add the eggs 1 at a time to your stand mixer, combining well after each addition and scraping down the sides and bottom of the bowl as needed.</li>
				<li>Reduce your mixer speed to low and mix in the strawberry puree.</li>
				<li>In a medium bowl, whisk together the flour, baking powder, baking soda, and salt. Slowly add 1/2 of the flour mixture to your stand mixer. Mix on the lowest speed until combined.</li>
				<li>In a small bowl, whisk together the sour cream and oil. Add to your stand mixer bowl.</li>
				<li>Add the remaining flour mixture to your stand mixer bowl and mix on low speed until well incorporated. Be careful not to overbeat.</li>
				<li>Add the vanilla and strawberry extracts and food coloring, if using. Scrape down the sides and bottom of the bowl and mix the batter until just combined. Be careful not to overmix.</li>
				<li>Using an ice cream scoop (with trigger release) or a spoon, scoop the batter into the cupcake liners until each is 3/4 full. Be careful not to overfill.</li>
				<li>Bake for 17 to 21 minutes, or until a toothpick inserted into the center of a cupcake comes out mostly clean but still moist.</li>
				<li>Let the cupcakes cool in the pans for 10 minutes, then transfer to a wire rack. Let cool to room temperature. Lightly cover the cupcakes with foil or plastic wrap so they do not dry out.</li>
			</ol>
			<div><b>For the Buttercream:</b></div>
			<ol>
				<li>Clean your stand mixer bowl and whisk attachment. Add the confectioners' sugar and butter and mix on low speed, increasing the speed to medium-high once the sugar is fully incorporated. Continue to mix until light and fluffy.</li>
				<li>Add the strawberry puree, strawberry extract, and salt and beat until the mixture is cotton-candy pink and the puree is fully incorporated.</li>
				<li>Once the cupcakes have cooled completely, pipe them with the buttercream and serve.</li>
			</ol>
		</div>
		<div class="row pt-2">
			<h5><b>Video Tutorial</b></h5>
		</div>
		<div class="row pt-2">
			<span class="pb-3 pl-2">If you want to see the video tutorial click here!</span>		
		</div>
		<div class="row pt-2">
			<iframe width="715" height="402" src="https://www.youtube.com/embed/c7US98Alw1Y" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
	</div>

</body>

</html>