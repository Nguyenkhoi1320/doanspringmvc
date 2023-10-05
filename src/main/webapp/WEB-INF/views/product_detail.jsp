<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<!-- Include Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Include Font Awesome CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

<!-- Include Bootstrap JavaScript (use <script> for JavaScript files) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<!-- Include jQuery (use <script> for JavaScript files) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="/WEB-INF/filecss/css1.jsp"%><!--  -->
<%@ include file="/WEB-INF/filecss/css2.jsp"%>
</head>
<body>
<%@ include file="/WEB-INF/views/navbar.jsp"%>
	<div class="container mt-5 mb-5">
		<div class="row d-flex justify-content-center">
			<div class="col-md-10">
				<div class="card">
					<div class="row">
						<div class="col-md-6">
							<div class="images p-3">
								<div class="text-center p-4">
									<img id="main-image" src="${product.image}"
										width="50%",heigth="50%" />
								</div>
								<div class="thumbnail text-center">
									<img onclick="change_image(this)"
										src="${product.image}" width="40%"> <img
										onclick="change_image(this)"
										src="${product.image1}" width="30%">
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="product p-4">
								<div class="d-flex justify-content-between align-items-center">
									<div class="d-flex align-items-center">
										<i class="fa fa-long-arrow-left"></i> <span class="ml-1"><a style="text-decoration: none;"href="homepage"><strong>Back</strong></a></span>
									</div>
									<i class="fa fa-shopping-cart text-muted"></i>
								</div>
								<div class="mt-4 mb-3">
									<h5 class="text-uppercase">${product.name}</h5>
									<div class="price d-flex flex-row align-items-center">
										<span class="act-price">${product.price}</span>
										<div class="ml-2">
											<small class="dis-price">$59</small> <span>40% OFF</span>
										</div>
									</div>
								</div>
								<h6 class="" >Describe: ${product.describes}</h6>
								<h6 class="" >Product Type: ${product.productType.name}</h6>
								<div class="cart mt-4 align-items-center">
									<button style="margin: 10px" class="btn btn-danger text-uppercase mr-2 px-4">Add
										to cart</button>
									<i class="fa fa-heart text-muted"></i> <i
										class="fa fa-share-alt text-muted"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
		
<script type="text/javascript">
	function change_image(image) {

		var container = document.getElementById("main-image");

		container.src = image.src;
	}

	document.addEventListener("DOMContentLoaded", function(event) {

	});
</script>
</html>