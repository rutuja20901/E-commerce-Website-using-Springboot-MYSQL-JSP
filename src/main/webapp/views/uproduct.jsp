<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
	
	<!--Stylesheet link-->
	<link rel="stylesheet" href="/css/index.css">
	
	<!--Bootstrap link-->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	<!--Fontawesome link-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Document</title>
</head>
<body class="bg-light">
	
	<!--
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				th:src="@{/images/logo.png}" src="../static/images/logo.png"
				width="auto" height="40" class="d-inline-block align-top" alt="" />
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto"></ul>
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="/">Home
							Page</a></li>
					<li class="nav-item active"><a class="nav-link" href="/logout">Logout</a>
					</li>

				</ul>

			</div>
		</div>
	</nav>
	-->
	

	   <!-----------------Nav-bar section ------------------->
	   <section id="nav-bar">
	       <nav class="navbar navbar-expand-lg navbar-light bg-light">
	           <div class="container-fluid">
	            
	             <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	               <span class="navbar-toggler-icon"></span>
	             </button>
	             <div class="collapse navbar-collapse" style="margin-left: 90px; font-size: 18px;" id="navbarNav">
	               <ul class="navbar-nav">
					<li class="nav-item">
					<a class="navbar-brand"><i class="fa fa-shopping-basket" style="margin-right:7px; color:green"></i>Groco</a>
					</li>
	                 <li class="nav-item">
	                   <a class="nav-link" href="/">Home</a>
	                 </li>
	                 <li class="nav-item">
	                   <a class="nav-link" href="/user/categories">Category</a>
	                 </li>
	                 <li class="nav-item">
	                   <a class="nav-link" href="/user/products">Product</a>
	                 </li>
				  <!--
	                 <li class="nav-item">
	                   <a class="nav-link" href="#">Deal</a>
	                 </li>
				  -->
	                 <li class="nav-item">
	                   <a class="nav-link" href="#">Contact</a>
	                 </li>
	               </ul>
	             </div>
	             <div class="icon col-md-3">
	                 <a href="/user/cart"><i class="fa fa-shopping-cart" style="padding:0 8px; color: black; font-size: 25px;"></i></a>
	                 <!--<a href="#"><i class="fa fa-heart" style="padding:0 8px; color: black; font-size: 25px;"></i></a>-->
	                 <a sec:authorize="isAuthenticated()" href="profileDisplay"><i class="fa fa-user-circle" style="padding:0 8px; color: black; font-size: 25px;"></i></a>
				  <a href = "#"><i class="fa-solid fa-right-from-bracket" style="padding:0 8px; color: black; font-size: 25px;"></i></a>
	             </div>
	           </div>
	         </nav>
	   </section>
	   <br><br>
	<div class="container-fluid">


		<table class="table">

			<tr>
				<th scope="col">Serial No.</th>
				<th scope="col">Product Name</th>
				<th scope="col">Category</th>
				<th scope="col">Preview</th>
				<th scope="col">Quantity</th>
				<th scope="col">Price</th>
				<th scope="col">Weight</th>
				<th scope="col">Descrption</th>
				<th scope="col">Buy</th>

			</tr>
			<tbody>
			<c:forEach var="product" items="${products}">
				<tr>




					<td>
                    						${product.id}
                    					</td>
                    					<td>
                    						${product.name }
                    					</td>
                    					<td>
                    						${product.category.name}

                    					</td>

                    					<td><img src="${product.image}"
                    						height="100px" width="100px"></td>
                    					<td>
                    						${product.quantity }
                    					</td>
                    					<td>S
                    						${product.price }
                    					</td>
                    					<td>
                    						${product.weight }
                    					</td>
                    					<td>
                    						${product.description }
                    					</td>


					<td>


				    <form action="products/addtocart" method="get">
							<input type="hidden" name="id" value="${product.id}">
							<input type="submit" value="Add To Cart" class="btn btn-warning">
					</form>
					</td>


				</tr>
           </c:forEach>

			</tbody>
		</table>

	</div>



	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>