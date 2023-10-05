<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/filecss/css.jsp"%>
<%@ include file="/WEB-INF/filecss/js.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/layout/header.jsp"%>
	<%@ include file="/WEB-INF/layout/nav.jsp"%>
	<main id="main" class="main">
		<div class="pagetitle">
			<h1 class="mt-5 mb-4 text-center">Edit Product</h1>
			<form:form action="saveCustomer" method="post"
				modelAttribute="khachHangs">
				<form:hidden path="maKhachHang" />
				<div class="mb-3">
					<form:label path="hoVaTenDem" class="form-label">Name:</form:label>
					<form:input path="hoVaTenDem" class="form-control" />
					<form:errors path="hoVaTenDem" class="text-danger" />
				</div>
 				<div class="mb-3">
					<form:label path="diaChi" class="form-label">Dia Chi:</form:label>
					<form:input path="diaChi" class="form-control" />
					<form:errors path="diaChi" class="text-danger" />
				</div>
				<div class="mb-3">
					<form:label path="email" class="form-label">Email:</form:label>
					<form:input path="email" class="form-control" />
					<form:errors path="email" class="text-danger" />
				</div>

				<div class="mb-3">
					<form:label path="soDienThoai" class="form-label">SDT:</form:label>
					<form:input path="soDienThoai" class="form-control" />
					<form:errors path="soDienThoai" class="text-danger" />
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Submit</button>
				</div>
			</form:form>
		</div>
	</main>
	</div>

</body>
</html>