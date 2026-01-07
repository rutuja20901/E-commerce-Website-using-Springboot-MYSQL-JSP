<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>


<!--

<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
          <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <title>Document</title>
    
</head>
<body>

<section class="wrapper">
        <div class="container-fostrap">
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img th:src="@{/images/logo.png}"  src="../static/images/logo.png" width="auto" height="40" class="d-inline-block align-top" alt=""/>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
		
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <h4>Welcome ${ username } </h4>
            <ul class="navbar-nav mr-auto"></ul>
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" th:href="@{/}" href="#">CART</a>
                </li>
                 <li class="nav-item active">
                    <a class="nav-link" href="profileDisplay" >Profile</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" sec:authorize="isAuthenticated()" href="logout">Logout</a>
                </li>
               
            </ul>

        </div>
    </div>
</nav>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Perishable Shop</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <style>
    body {
      padding: 20px;
    }
     .card-body {
          height: 250px; /* Set a fixed height for the card body */
        }

        .card-img-top {
          max-height: 100px; /* Limit the height of the product image */
          object-fit: contain;
        }

  </style>
</head>
<body class="bg-light">
  <header>

  </header>
  <main>

    <div class="container">
      <h1>Welcome to Perishable Shop</h1>


      <div class="row">
      <c:forEach var="product" items="${products}">
        <div class="col-md-3">
          <div class="card mb-4">
            <img class="card-img-top" src="${product.image}" alt="Product 1">
            <div class="card-body">
             <b> <h4 class="card-title">${product.name}</h4></b>
              <h5 class="card-text">Category: ${product.category.name}</h5>
              <h5 class="card-text">Price: ${product.price}</h5>
              <p class="card-text">Description: ${product.description}</p>
              <a href="#" class="btn btn-primary">Add to Cart</a>
            </div>
          </div>
        </div> </c:forEach>
      </div>

    </div>
  </main>
  <footer>
    <div class="container">
      <p>&copy; 2023 Perishable Shop. All rights reserved

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>


-->



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grocery Store website</title>

    <!--Stylesheet link-->
    <link rel="stylesheet" href="/css/index.css">

    <!--Bootstrap link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!--Fontawesome link-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

    <!--------------Header section---------------------->
    <section id="header-bar">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand"><i class="fa fa-shopping-basket" style="margin-right:7px; color:green"></i>Groco</a>
          
            <form class="d-flex">
              <input class="form-control me-2" type="search" placeholder="Search here..." aria-label="Search">
              <button class="btn btn-outline-success" style="background-color: green; color: white;" type="submit"><i class="fa fa-search"></i></button>
            </form>
          </div>
        </div>
      </nav>
    </section>


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

    <!---------------Banner section--------------------->
    <section id="banner">
      <div class="container">
         <div class="row offset-1">
          <div class="col-md-8" style="margin:10% -2%; font-size: 19px;">
            <p>Fresh and Organic</p>
            <h1>Your daily need <br>
              products</h1>
              <br>
              <button class="btn btn-success" type="button">Get started</button>
          </div>
          <br>
          <br>
          <div class="col-md-7" style="margin:-35% 31%">
            <img src="./images/Picture1.png" class="img-fluid">
          </div>
      
          <div class="col-md-5">
            <img src="./images/Untitle5.png" class="img1">
          </div>
          <div class="col-md-5">
            <img src="./images/Untitle6.png" class="img1">
          </div>
        </div> 
      </div>
      </div>
      </section> 
      <br>
      <br>

      <!--------------Category section------------------->
      <section id="category">
        <div class="container">
          <h3 class="title">Shop By <b>CATEGORY</b></h3>

        <div class="product-container">

            <div class="product" data-name="p-1">
                <img src="./images/1.png" alt="">
                <h3>Vegetables</h3>
                <div class="price">$10.00</div>
            </div>

            <div class="product" >
                <img src="./images/2.png" alt="">
                <h3>Milk & Egg</h3>
                <div class="price">$5.00</div>
            </div>

            <div class="product" data-name="p-3">
                <img src="./images/3.png" alt="">
                <h3>Meat</h3>
                <div class="price">$12.00</div>
            </div>

            <div class="product" data-name="p-4">
                <img src="./images/S4.png" alt="">
                <h3>Fruits</h3>
                <div class="price">$3.00</div>
            </div>

            <div class="product" data-name="p-5">
                <img src="./images/5.png" alt="">
                <h3>Dragun fruit</h3>
                <div class="price">$4.00</div>
            </div>

            <div class="product" data-name="p-6">
                <img src="./images/6.png" alt="">
                <h3>Bakery Product</h3>
                <div class="price">$2.00</div>
            </div>
        </div>
        </div>
      </section>


      <!-------------Product section----------------->
      <section id="product">
        <div class="container">
          <h3 class="title">LATEST <b>PRODUCTS</b></h3>

          <div class="product-container" style="width: 278px">
           <div class="r1">
            <div class="product" data-name="1">
              <div class="head-icon" style="float:right; display: inline-grid; margin: -9px -9px">
                <i class="fa fa-heart"></i>
                <i class="fa fa-share"></i>
                <i class="fa fa-eye"></i>
              </div>
              <div class="percentage" style="background-color: rgba(172, 255, 172, 0.904); width: 45px">-33%</div>
              <img src="./images/Picture6.png" alt="" style="width: 214px; margin-top: 0; height:164px; position: sticky">
              <h4 class="head">Organic Apple</h4>
              <div class="stars">
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                
              </div>
              <h6 class="price">$10.50</h6>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quantity: <input type="number" placeholder="" style="background-color: rgba(201, 194, 194, 0.596); width: 71px; border:1px solid black; margin-left: 5px;">&nbsp;&nbsp;&nbsp;/Kg<br><br>
              <button type="button" class="btn btn-success" style="margin: 0 33px; width: 263px; margin-left:7px">Add To Cart</button>

            </div>

            <div class="product" data-name="2">
              <div class="head-icon" style="float:right; display: inline-grid; margin: -9px -9px">
                <i class="fa fa-heart"></i>
                <i class="fa fa-share"></i>
                <i class="fa fa-eye"></i>
              </div>
              <div class="percentage" style="background-color: rgba(172, 255, 172, 0.904); width: 45px">-45%</div>
              <img src="./images/Picture7.png" alt="" style="width: 214px; margin-top: 0; height:164px; position: sticky">
              <h4 class="head">Organic Tomato</h4>
              <div class="stars">
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                
              </div>
              <h6 class="price">$10.50</h6>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quantity: <input type="number" placeholder="" style="background-color: rgba(201, 194, 194, 0.596); width: 71px; border:1px solid black; margin-left: 5px;">&nbsp;&nbsp;&nbsp;/Kg<br><br>
              <button type="button" class="btn btn-success" style="margin: 0 33px; width: 263px; margin-left:7px">Add To Cart</button>

            </div>

            <div class="product" data-name="3">
              <div class="head-icon" style="float:right; display: inline-grid; margin: -9px -9px">
                <i class="fa fa-heart"></i>
                <i class="fa fa-share"></i>
                <i class="fa fa-eye"></i>
              </div>
              <div class="percentage" style="background-color: rgba(172, 255, 172, 0.904); width: 45px">-56%</div>
              <img src="./images/Picture4.png" alt="" style="width: 214px; margin-top: 0; height:164px; position: sticky">
              <h4 class="head">Organic Orange</h4>
              <div class="stars">
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                
              </div>
              <h6 class="price">$10.50</h6>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quantity: <input type="number" placeholder="" style="background-color: rgba(201, 194, 194, 0.596); width: 71px; border:1px solid black; margin-left: 5px;">&nbsp;&nbsp;&nbsp;/Kg<br><br>
              <button type="button" class="btn btn-success" style="margin: 0 33px; width: 263px; margin-left:7px">Add To Cart</button>

            </div>
            </div>

            <div class="r2" style="margin-top: 82px">

            <div class="product" data-name="4">
              <div class="head-icon" style="float:right; display: inline-grid; margin: -9px -9px">
                <i class="fa fa-heart"></i>
                <i class="fa fa-share"></i>
                <i class="fa fa-eye"></i>
              </div>
              <div class="percentage" style="background-color: rgba(172, 255, 172, 0.904); width: 45px">-13%</div>
              <img src="./images/Picture8.png" alt="" style="width: 214px; margin-top: 0; height:164px; position: sticky">
              <h4 class="head">Natural Milk</h4>
              <div class="stars">
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                
              </div>
              <h6 class="price">$10.50</h6>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quantity: <input type="number" placeholder="" style="background-color: rgba(201, 194, 194, 0.596); width: 71px; border:1px solid black; margin-left: 5px;">&nbsp;&nbsp;&nbsp;/Kg<br><br>
              <button type="button" class="btn btn-success" style="margin: 0 33px; width: 263px; margin-left:7px">Add To Cart</button>

            </div>

            <div class="product" data-name="5">
              <div class="head-icon" style="float:right; display: inline-grid; margin: -9px -9px">
                <i class="fa fa-heart"></i>
                <i class="fa fa-share"></i>
                <i class="fa fa-eye"></i>
              </div>
              <div class="percentage" style="background-color: rgba(172, 255, 172, 0.904); width: 45px">-33%</div>
              <img src="./images/Picture9.png" alt="" style="width: 214px; margin-top: 0; height:164px; position: sticky">
              <h4 class="head">Organic Grapes</h4>
              <div class="stars">
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                
              </div>
              <h6 class="price">$10.50</h6>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quantity: <input type="number" placeholder="" style="background-color: rgba(201, 194, 194, 0.596); width: 71px; border:1px solid black; margin-left: 5px;">&nbsp;&nbsp;&nbsp;/Kg<br><br>
              <button type="button" class="btn btn-success" style="margin: 0 33px; width: 263px; margin-left:7px">Add To Cart</button>

            </div>

            <div class="product" data-name="6">
              <div class="head-icon" style="float:right; display: inline-grid; margin: -9px -9px">
                <i class="fa fa-heart"></i>
                <i class="fa fa-share"></i>
                <i class="fa fa-eye"></i>
              </div>
              <div class="percentage" style="background-color: rgba(172, 255, 172, 0.904); width: 45px">-33%</div>
              <img src="./images/Picture10.png" alt="" style="width: 214px; margin-top: 0; height:164px; position: sticky">
              <h4 class="head">Organic Almonds</h4>
              <div class="stars">
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                
              </div>
              <h6 class="price">$10.50</h6>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quantity: <input type="number" placeholder="" style="background-color: rgba(201, 194, 194, 0.596); width: 71px; border:1px solid black; margin-left: 5px;">&nbsp;&nbsp;&nbsp;/Kg<br><br>
              <button type="button" class="btn btn-success" style="margin: 0 33px; width: 263px; margin-left:7px">Add To Cart</button>

            </div>
          </div>


          <div class="r3" style="margin-top: 82px">

            <div class="product" data-name="7">
              <div class="head-icon" style="float:right; display: inline-grid; margin: -9px -9px">
                <i class="fa fa-heart"></i>
                <i class="fa fa-share"></i>
                <i class="fa fa-eye"></i>
              </div>
              <div class="percentage" style="background-color: rgba(172, 255, 172, 0.904); width: 45px">-33%</div>
              <img src="./images/Picture11.png" alt="" style="width: 214px; margin-top: 0; height:164px; position: sticky">
              <h4 class="head">Organic Banana</h4>
              <div class="stars">
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                
              </div>
              <h6 class="price">$10.50</h6>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quantity: <input type="number" placeholder="" style="background-color: rgba(201, 194, 194, 0.596); width: 71px; border:1px solid black; margin-left: 5px;">&nbsp;&nbsp;&nbsp;/Kg<br><br>
              <button type="button" class="btn btn-success" style="margin: 0 33px; width: 263px; margin-left:7px">Add To Cart</button>

            </div>

            <div class="product" data-name="8">
              <div class="head-icon" style="float:right; display: inline-grid; margin: -9px -9px">
                <i class="fa fa-heart"></i>
                <i class="fa fa-share"></i>
                <i class="fa fa-eye"></i>
              </div>
              <div class="percentage" style="background-color: rgba(172, 255, 172, 0.904); width: 45px">-33%</div>
              <img src="./images/Picture12.png" alt="" style="width: 214px; margin-top: 0; height:164px; position: sticky">
              <h4 class="head">Organic Butter</h4>
              <div class="stars">
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                
              </div>
              <h6 class="price">$10.50</h6>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quantity: <input type="number" placeholder="" style="background-color: rgba(201, 194, 194, 0.596); width: 71px; border:1px solid black; margin-left: 5px;">&nbsp;&nbsp;&nbsp;/Kg<br><br>
              <button type="button" class="btn btn-success" style="margin: 0 33px; width: 263px; margin-left:7px">Add To Cart</button>

            </div>

            <div class="product" data-name="9">
              <div class="head-icon" style="float:right; display: inline-grid; margin: -9px -9px">
                <i class="fa fa-heart"></i>
                <i class="fa fa-share"></i>
                <i class="fa fa-eye"></i>
              </div>
              <div class="percentage" style="background-color: rgba(172, 255, 172, 0.904); width: 45px">-33%</div>
              <img src="./images/Picture13.png" alt="" style="width: 214px; margin-top: 0; height:164px; position: sticky">
              <h4 class="head">Organic Carrot</h4>
              <div class="stars">
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                  <i class="fa fa-star" style="color: yellow;"></i>
                
              </div>
              <h6 class="price">$10.50</h6>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quantity: <input type="number" placeholder="" style="background-color: rgba(201, 194, 194, 0.596); width: 71px; border:1px solid black; margin-left: 5px;">&nbsp;&nbsp;&nbsp;/Kg<br><br>
              <button type="button" class="btn btn-success" style="margin: 0 33px; width: 263px; margin-left:7px">Add To Cart</button>

            </div>
          </div>
          </div>
        </div>
      </section>


      <!------------Deal section----------------

      <section id="deal">
        <div class="row" style="margin:23px 99px">
          <div class="col-md-6">
            <h3 style="margin-top: 150px; color: white; font-weight: 700; font-size: 2.5rem;">Deal of The Day</h3>
            <p style="color: white">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nihil cumque incidunt harum. Eius vero, fugit dignissimos iste ipsam vel aliquam, tempore enim ea voluptate expedita maiores accusantium, recusandae iusto distinctio!</p>
            <!--<a href=""><img src="C:\Users\Rutuja\OneDrive\Desktop\Bootstrap\Project1\Corn\images\Untitled1.png"></a>
            <button type="button" class="btn btn-success">Get the deal</button>
          </div> 
        </div>
      </section>
	  
	  -->

      <br><br><br><br>

      <!--------------Contact Section----------------->
      <section id="contact">
        <div class="container">
          <h3 class="title"> <b>CONTACT</b> US</h3>
          <div class="col-md-5 form-control" style="padding: 1.375rem 2.75rem">
            <input type="text" style="width: 490px;" placeholder="Name">
            <input type="email" style="width: 490px; margin-left: 20px" placeholder="Email"><br><br>
            <input type="text" style="width: 490px;" placeholder="Number">
            <input type="text" style="width: 490px; margin-left: 20px"placeholder="Subject"><br><br>
            <input type="message" style="width: 98%; height: 128px;" placeholder="Message">
            <button class="btn btn-success col-md-1" type="button" style=" text-align: center; width: 15%; margin: 2rem 26rem">Submit</button>

          </div>
        </div>
      </section>

      <br>
      <br>
      <br>



      <!-----------Footer section--------------->
      <section id="footer" style="width: 100%; height: 60vh; background-color: #277b09;">
        <div class="container offset-1" style="display: inline-flex;">
          <div class="row col-md-4" style="margin-top: 20px;">
            <a class="navbar-brand"  style="color:rgb(246, 255, 246); font-size: 26px;"><i class="fa fa-shopping-basket" style="margin-right:7px;"></i>Groco</a> 
            <p class="cont" style="color: white; ">Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores, cum voluptates. Incidunt consectetur ducimus aspernatur molestiae id debitis nihil vel veritatis. Nostrum, a quidem veniam dolorum reiciendis totam nemo ea?</p>     
          </div>
        
        <div class="col-md-4" style="margin-left: 120px; margin-top: 20px;">
          <h4 style="color: white;">Quick link</h4>
          <nav class="navbar">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Category</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Product</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Deal</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Contact</a>
              </li>
            </ul>
          </nav>
        </div>

        <div class="col-md-4" style="margin-top: 20px;">
          <h4 style="color: white;">Contact US</h4>
          <nav class="navbar" style="margin-left: -251px; padding: 8px 181px;">
            <ul class="navbar-nav" style="display: contents;">
              <li class="nav-item">
                <a class="nav-link" href="#"><img src="./images/facebook-icon.png" style="width: 50px"></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><img src="./images/instagram-icon.png" style="width: 50px"></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><img src="./images/twitter-icon.png" style="width: 50px"></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><img src="./images/whatsapp-icon.png" style="width: 50px"></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><img src="./images/linkedin-icon.png" style="width: 50px"></a>
              </li>
            </ul>
          </nav>
        </div>
      </div>
      <br>
      <br>
     

      <div style="text-align: center; color: white; font-size: 20px; font-weight: 600; text-decoration: underline;">----Created By Rutuja Chavan----</div>

      </section>


</body>
</html>