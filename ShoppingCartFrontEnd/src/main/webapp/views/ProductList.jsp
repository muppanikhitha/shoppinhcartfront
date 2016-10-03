<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>

	            <h3>Product List</h3>
<c:if test="${!empty productList}">
	<div class="table-responsive">
	<table class="table table-hover">
	<tr>
		<th > Product Id</th>
		<th >Product Name</th>
		<th >Product Description</th>
				<th>Product Price</th>
				<th>Product image</th>
					<th>Category</th>
						<th>Supplier</th>
</tr>
	<c:forEach items="${productList}" var="product">
		<tr>
			<td>${product.prt_id}</td>
			<td>${product.prt_name}</td>
			<td>${product.prt_description}</td>
			<td>${product.prt_price}</td>
			<td>
			<img width="150px" height="150px"  alt="${product.prt_id}"
            src="<c:url value="D:\\workspace\\ShoppingCartFrontEnd\\src\\main\\resources\\images\\${product.prt_id}.jpg"></c:url>"></td>
			<td>${product.catey_id}<td>
			<td>${product.suppr_id} </td>
			
			
			</tr>
			</c:forEach>
	</table>
	</div>
</c:if>

</body>
</html>