<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/filecss/css.jsp"%>
<%@ include file="/WEB-INF/filecss/js.jsp"%>
<style type="text/css">
table {
	border: 1px solid black;
}

th {
	border: 1px solid black;
}

td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/layout/header.jsp"%>
	<%@ include file="/WEB-INF/layout/nav.jsp"%>
	<main id="main" class="main">
		<div class="pagetitle">
			<div class="container text-center" style="margin-right: 10px">
				<h1 class="mt-5 mb-4 text-center">Danh Sách Sản Phẩm</h1>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>Tên Sản Phẩm</th>
							<th>Mô Tả Sản Phẩm</th>
							<th>Giá</th>
							<th>Loại Sản Phẩm</th>
							<th>Ảnh</th>
							<th>Ảnh 2</th>
							<th>Hành Động</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products}" var="product">
							<tr>
								<td>${product.id}</td>
								<td>${product.name}</td>
								<td>${product.describes}</td>
								<td>${product.price}</td>
								<td>${product.productType.name}</td>
								<td><img style="width: 20%" alt="" src="${product.image}"></td>
								<td><img style="width: 20%" alt="" src="${product.image1}"></td>
								<td><a class="btn btn-danger btn-sm"
									href="updateForm?productID=${product.id}">SỬA</a> <br> <a
									class="btn btn-warning btn-sm text-white"
									href="deleteproduct?productID=${product.id}">XOÁ</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<a href="${pageContext.request.contextPath}/product/showForm"
					class="btn btn-primary">THÊM</a>
			</div>
		</div>
	</main>
</body>
</html>