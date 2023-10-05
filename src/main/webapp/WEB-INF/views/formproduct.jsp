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
			<h1 class="mt-5 mb-4 text-center">THÊM SẢN PHẨM</h1>
			<form:form action="saveProduct" method="post" modelAttribute="product">
				<form:hidden path="id" />
				<div class="mb-3">
					<form:label path="name" class="form-label">Name:</form:label>
					<form:input path="name" class="form-control" />
					<form:errors path="name" class="text-danger" />
				</div>
				<div class="mb-3">
					<form:label path="describes" class="form-label">Describe:</form:label>
					<form:input path="describes" class="form-control" />
					<form:errors path="describes" class="text-danger" />
				</div>
				<div class="mb-3">
					<form:label path="price" class="form-label">Price:</form:label>
					<form:input path="price" class="form-control" />
					<form:errors path="price" class="text-danger" />
				</div>

				<div class="mb-3">
					<form:label path="image" class="form-label">Image:</form:label>
					<form:input path="image" class="form-control" />
					<form:errors path="image" class="text-danger" />
				</div>
				
				<div class="mb-3">
					<form:label path="image1" class="form-label">Image1:</form:label>
					<form:input path="image1" class="form-control" />
					<form:errors path="image1" class="text-danger" />
				</div>
				<form:label path="productType.id" class="form-label">ProductType:</form:label>
				<select class="form-control" id="productType" name="productType.id" required>
					<c:forEach items="${productTypes}" var="productTypes">
						<option value="${productTypes.id}">${productTypes.name}</option>
					</c:forEach>
				</select>
				<div class="text-center">  
					<button type="submit" class="btn btn-primary">Submit</button>
				</div>
			</form:form>
		</div>
	</main>
</body>
</html>