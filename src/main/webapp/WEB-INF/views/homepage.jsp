<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<%@ include file="/WEB-INF/filecss/css1.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<!-- Header -->
		<%@ include file="/WEB-INF/views/navbar.jsp"%>
		<!-- end nav -->
		<!-- Slider -->
		<div id="carouselExampleInterval" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item" data-bs-interval="2000">
					<img
						src="https://rapticstrong.com/cdn/shop/collections/collection-banner_iPhone_Cases_Desktop.jpg?v=1625072679"
						class="d-block w-100" style="height: 470px;" alt="...">
				</div>
				<div class="carousel-item active" data-bs-interval="2000">
					<img
						src="https://rapticstrong.com/cdn/shop/collections/collection-banner_iPhone_Cases_Desktop.jpg?v=1625072679"
						class="d-block w-100" style="height: 470px;" alt="...">
				</div>
				<div class="carousel-item" data-bs-interval="2000">
					<img
						src="https://rapticstrong.com/cdn/shop/collections/collection-banner_iPhone_Cases_Desktop.jpg?v=1625072679"
						class="d-block w-100" style="height: 470px;" alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleInterval" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<!-- end banner -->
		<div class="container-fluid" style="font-weight: 700;">
			<div class="row" id="row-service1">
				<div class="col-md-4">
					<div class="card border-light mb-3" style="width: 18rem;">
						<a href="" style="text-decoration: none;"><img
							src="https://shreepng.com/img/Inside/Electronic/Smartwatch/realme%20Watch%20Classic%20Black%20Left.png"
							class="card-img-top" alt="...">
							<div class="card-body">
								<p class="card-text text-center">Smarth Watch</p>
							</div> </a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card border-light mb-3" style="width: 18rem;">
						<a href="" style="text-decoration: none;"><img
							src="https://pngimg.com/uploads/iphone_12/iphone_12_PNG3.png"
							class="card-img-top" alt="...">
							<div class="card-body">
								<p class="card-text text-center">Iphone</p>
							</div> </a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card border-light mb-3" style="width: 18rem;">
						<a href="" style="text-decoration: none;"><img
							src="https://static.wixstatic.com/media/271513_cb0980769f3b464ba4233b6ef937a3e9~mv2.png/v1/fill/w_500,h_501,al_c/ipad_pro_12.9_4th.png"
							class="card-img-top" alt="...">
							<div class="card-body">
								<p class="card-text text-center">Ipad</p>
							</div> </a>
					</div>
				</div>
			</div>
			<div class="row" id="row-service1" style="margin-top: 80px">
				<div class="col-md-4">
					<div class="card border-light mb-3" style="width: 18rem;">
						<a href="" style="text-decoration: none;"><img
							src="https://pngimg.com/uploads/macbook/macbook_PNG68.png"
							class="card-img-top" alt="...">
							<div class="card-body">
								<p class="card-text text-center">MacBook</p>
							</div> </a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card border-light mb-3" style="width: 18rem;">
						<a href="" style="text-decoration: none;"><img
							src="https://i-connect.ie/media/wysiwyg/82167911.cms.png"
							class="card-img-top" alt="...">
							<div class="card-body">
								<p class="card-text text-center">Apple Accesories</p>
							</div> </a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card border-light mb-3" style="width: 18rem;">
						<a href="" style="text-decoration: none;"><img
							src="https://png.pngtree.com/png-clipart/20230508/original/pngtree-airpods-png-image_9149137.png"
							class="card-img-top" alt="...">
							<div class="card-body">
								<p class="card-text text-center">Airpod</p>
							</div> </a>
					</div>
				</div>
				<!-- main container -->
				<div class="main-col">
					<div class="container-fluid">
						<div class="row">
							<div class="product-grid-view">
								<div class="col-md-12">
									<div class="std">
										<div class="home-tabs wow bounceInUp animated">
											<div class="producttabs">
												<div id="magik_producttabs1" class="magik-producttabs">
													<!--<h3></h3>-->
													<div class="magik-pdt-container">
														<!--Begin Tab Nav -->
														<div class="magik-pdt-nav">
															<ul class="pdt-nav">
																<li class="item-nav tab-loaded tab-nav-actived"
																	data-type="order" data-catid=""
																	data-orderby="best_sales" data-href="pdt_best_sales"><span
																	class="title-navi">Best Seller</span></li>
																<li class="item-nav" data-type="order" data-catid=""
																	data-orderby="new_arrivals"
																	data-href="pdt_new_arrivals"><span
																	class="title-navi">New Arrivals</span></li>
															</ul>
														</div>
														<!-- End Tab Nav -->


														<!--Begin Tab Content -->
														<!-- Hien thi san pham -->
														<div class="magik-pdt-content wide-5">
															<div
																class="pdt-content is-loaded pdt_best_sales tab-content-actived">
																<ul class="pdt-list products-grid-home zoomOut play">
																	<c:forEach items="${products}" var="product">
																		<li class="item item-animate wide-first"
																			style="margin-right: 10px">
																			<div class="item-inner">
																				<div class="item-img">
																					<div class="item-img-info">
																						<a href="product_detail.html"
																							title="Sample Product" class="product-image">
																							<img src="${product.image}" alt="Sample Product">
																						</a>
																						<div class="new-label new-top-left">New</div>
																						<div class="item-box-hover">
																							<div class="box-inner">
																								<div class="actions">
																									<div class="add_cart">
																										<button class="button btn-cart" type="button">
																											<span>Add to Cart</span>
																										</button>
																									</div>
																									<div class="product-detail-bnt">
																										<a href="detail?productID=${product.id}"
																											class="button detail-bnt"><span>Quick
																												View</span></a>
																									</div>
																									<span class="add-to-links"><a
																										href="wishlist.html" class="link-wishlist"
																										title="Add to Wishlist"><span>Add
																												to Wishlist</span></a> <a href="compare.html"
																										class="link-compare add_to_compare"
																										title="Add to Compare"><span>Add to
																												Compare</span></a></span>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																				<!-- Thong tin san pham -->
																				<div class="item-info">
																					<div class="info-inner">
																						<div class="item-title">
																							<a href="detail?productID=${product.id}"
																								title="Sample Product">${product.name}</a>
																						</div>
																						<div class="item-content">
																							<div class="item-price">
																								<div class="price-box">
																									<span class="regular-price"><span
																										class="price">${product.price}$</span> </span>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																	</c:forEach>
															</div>
														</div>
													</div>
												</div>
											</div>
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

</html>