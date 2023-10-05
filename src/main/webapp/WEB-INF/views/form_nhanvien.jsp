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
table{
    border:1px solid black;
}
th{
    border:1px solid black;
}
td{
    border:1px solid black;
}</style>
</head>
<body>
	<%@ include file="/WEB-INF/layout/header.jsp"%>
	<%@ include file="/WEB-INF/layout/nav.jsp"%>
	<main id="main" class="main">
		<div class="pagetitle">
			<div class="container text-center" style="margin-right: 10px">
				<h1 class="mt-5 mb-4 text-center">Danh Sách Nhân Viên</h1>
				<table class="table table-striped">
					<thead>
						<tr >
							<th>ID</th>
							<th>Chức Vụ</th>
							<th>Họ Tên</th>							
							<th>Ảnh</th>
							<th>Lương</th>
							<th>Tài Khoản</th>
							<th>Mật Khẩu</th>
							
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${nhanvien}" var="nhanvien">
							<tr>
								<td>${nhanvien.maNhanVien}</td>
								<td>${nhanvien.chucVu}</td>
								<td>${nhanvien.hoVaTenDem}</td>
								<td><img style="width:20%" alt="" src="${nhanvien.image}"></td>
								<td>${nhanvien.luong}</td>
								<td>${nhanvien.taiKhoan}</td>								
								<td>${nhanvien.matKhau}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
	</main>
</body>
</html>