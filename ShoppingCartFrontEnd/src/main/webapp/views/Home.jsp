
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>GADGETS</title>
<style>
</style>

</head>
<body style="background-color:lightblue">

	<div>
		<div data-role="header" data-position="fixed">
<h1 style="text-align:center;">WELCOME TO GADGETS FLOW</h1>

			${SuccessMessage}
			<table>
				<tr>
					
				</tr>

				<%-- <tr>
					<c:if test="${loggedOut==true}">
					</c:if>
					<td>${logOutMsg}</td>
				</tr> --%>
				<%-- 
				<tr>
					<c:if test="${not empty cartSize}">
						<td align="right"><a href="myCart">My cart</a>(${cartSize})</td>
					</c:if>
				</tr> --%>

			</table>
		</div>

		<%-- <div >
			<ul id=menu>
				<c:if test="${not empty List}">
					<c:forEach items="${category.List}" var="category ">
						<li><a href="${category.name}">${category.name}</a>
						
							
					</c:forEach>
				</c:if>
			</ul>
			<br> <br> <br> --%>
		<%-- --
			<div>
				<c:if test="${!empty selectedProduct.name}">
					<table>
						<tr>
							<th align="left" width="80">Product ID</th>
							<th align="left" width="120">Product Name</th>
							<th align="left" width="200">Product Description</th>
							<th align="left" width="80">Price</th>
							<th align="left" width="200">Product Category</th>
							<th align="left" width="200">Product Supplier</th>
						</tr>
						<tr>
							<td align="left">${SelectedProduct.id}</td>
							<td align="left">${SelectedProduct.name}</td>
							<td align="left">${SelectedProduct.description}</td>
							<td align="left">${SelectedProduct.price}</td>
							<td align="left">${SelectedProduct.category.name}</td>
							<td align="left">${SelectedProduct.supplier.name}</td>
						</tr>
					</table>
				</c:if>
			</div>
 --%>

		
<!DOCTYPE html>
<html lang="en">
<head>
  <title>The Gadget Flow</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">    <button type="button" class="btn btn-primary">
      Gadgets</button></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="home"><span class="glyphicon glyphicon-home"></span>Home</a></li>
        <li><a href="ProductList">Products</a></li> 
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"> <span class="glyphicon glyphicon-earphone"></span>Contacts <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">ongole</a></li>
            <li><a href="#">hyderabad</a></li>
          
          </ul>
        </li>
        <li><a href="AboutUs"><span class="glyphicon glyphicon-envelope"></span>AboutUs</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <c:choose>
						<c:when test="${empty loggedInUser}">
							<td ><a href="Login">    <button type="button" class="btn btn-primary">Login</button>
							</a></td>&nbsp;&nbsp;
							<td><a href="Registration">    <button type="button" class="btn btn-primary">Register</button>
							</a></td>
						</c:when>

						<c:when test="${not empty loggedInUser}">
							<td>Welcome ${loggedInUser},</td>
							<td align="right"><a href="logout">Logout</a></td>
						</c:when>
					</c:choose>
					
      </ul>
    </div>
  </div>
</nav>
  ${message}

		<div id="Registration">

			<c:if test="${userClickedRegisterHere==true}">
				<jsp:include page="Registration.jsp"></jsp:include>
			</c:if>
		</div>


		${failureMessage}
		<div id="Login">

			<c:if test="${userClickedLoginHere==true}">
				<jsp:include page="Login.jsp"></jsp:include>
			</c:if>
		</div>

       <div id="product">
       <c:if test="${isClickedProduct==true}">
       <jsp:include page="ProductList.jsp"></jsp:include>
       </c:if>
       </div> 
		<div id="admin">
			<c:if test="${isAdmin==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
			
			</c:if>
			<div id="categories">
			<c:if test="${isAdminClickedCategories==true}">
									<jsp:include page="adminHome.jsp"></jsp:include>
							<%@ include file="/views/category.jsp" %>		
			</c:if>
			</div>
				
			<div id="product">
			<c:if test="${isAdminClickedproducts==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
							<%@ include file="/views/Product.jsp" %>	
			</c:if>
			</div>			
			
			<div id="suppliers">
			<c:if test="${isAdminClickedsuppliers==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
							<%@ include file="/views/supplier.jsp" %>	
			</c:if>
			</div>

		</div>
	
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body>
<c:if test="${carousel==true}">
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
     
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="C:\pics\first.png" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="C:\pics\eight.jpg" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="C:\pics\nine.jpg" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="C:\pics\ten.jpg" alt="Flower" width="460" height="345">
      </div>
    </div>
    

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</c:if>






</body>
</html>