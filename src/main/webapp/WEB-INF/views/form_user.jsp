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
				<h1 class="mt-5 mb-4 text-center">Danh Sách Khách Hàng</h1>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>Họ Tên</th>
							<th>Địa chỉ</th>
							<th>Email</th>
							<th>SĐT</th>
							<th>Hành Động</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${KhachHang}" var="KhachHang">
							<tr>
								<td>${KhachHang.maKhachHang}</td>
								<td>${KhachHang.hoVaTenDem}</td>
								<td>${KhachHang.diaChi}</td>
								<td>${KhachHang.email}</td>
								<td>${KhachHang.soDienThoai}</td>
								<td><a class="btn btn-danger btn-sm"
									href="updateform?id=${KhachHang.maKhachHang}">SỬA</a> <br>
									<a class="btn btn-warning btn-sm text-white"
									href="deletecustomer?customerID=${KhachHang.maKhachHang}">XOÁ</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
	</main>
</body>
</html>