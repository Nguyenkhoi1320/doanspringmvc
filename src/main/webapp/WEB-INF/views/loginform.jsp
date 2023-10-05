<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<title>Login</title>
</head>
<body>
 <%@ include file="/WEB-INF/filecss/css2.jsp"%>
	<!-- Section: Design Block -->
	<section class="text-center text-lg-start">
		<!-- Jumbotron -->
		<div class="container py-4">
			<div class="row g-0 align-items-center">
				<div class="col-lg-6 mb-5 mb-lg-0">
					<div class="card cascading-right"
						style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);">
						<div class="card-body p-5 shadow-5 text-center">
							<h2 class="fw-bold mb-5">S<span style="color:blue">i</span>gn in <span style="color:blue">now</span></h2>
							<form:form method="post" action="loginn"
								modelAttribute="nhanVien">
								<!-- Email input -->
								<div class="form-outline mb-4">
									<label for="taiKhoan" class="form-label"><strong>UserName</strong></label>
									<form:input type="text" class="form-control" path="taiKhoan"
										id="taiKhoan" required="true" />

								</div>

								<!-- Password input -->
								<label class="form-label" for="matKhau"><strong>Password</strong></label>
								<div class="form-outline mb-4">

									<form:input type="password" class="form-control" path="matKhau"
										id="matKhau" required="true" />

								</div>
								
								<!-- Submit button -->
								<button type="submit" class="btn btn-primary btn-block mb-4">
									Sign in</button>
							</form:form>
							
							<!-- Register buttons -->
							<div class="text-center">
								<p>or sign in with:</p>
								<button type="button" class="btn btn-link btn-floating mx-1">
									<i class="fa fa-facebook-f"></i>
								</button>

								<button type="button" class="btn btn-link btn-floating mx-1">
									<i class="fa fa-google"></i>
								</button>

								<button type="button" class="btn btn-link btn-floating mx-1">
									<i class="fa fa-twitter"></i>
								</button>

								<button type="button" class="btn btn-link btn-floating mx-1">
									<i class="fa fa-github"></i>
								</button>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-6 mb-5 mb-lg-0">
					<img
						src="https://mdbootstrap.com/img/new/ecommerce/vertical/004.jpg"
						class="w-100 rounded-4 shadow-4" alt="" />
				</div>
			</div>
		</div>
		<!-- Jumbotron -->
	</section>
	<!-- Section: Design Block -->
</body>
</html>
