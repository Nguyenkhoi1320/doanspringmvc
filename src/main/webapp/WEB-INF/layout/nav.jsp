<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<li class="nav-item"><a class="nav-link " href="index.html">
				<i class="bi bi-grid"></i> <span>Dashboard</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			href="${pageContext.request.contextPath}/product/listProduct"> <i
				class="bi bi-person"></i> <span>Sản phẩm</span>
		</a></li>
		<!-- End Profile Page Nav -->
		<li class="nav-item"><a class="nav-link collapsed"
			href="${pageContext.request.contextPath}/producttype/home"> <i
				class="bi bi-question-circle"></i> <span>Loại sản phẩm</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			href="${pageContext.request.contextPath}/customer/home"> <i class="bi bi-envelope"></i> <span>Khách
					hàng</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			href="${pageContext.request.contextPath}/nhanvien/home"> <i class="bi bi-card-list"></i> <span>Nhân
					viên</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			href="${pageContext.request.contextPath}/login/logout"> <i class="bi bi-box-arrow-in-right"></i>
				<span>Đăng Xuất</span>
		</a></li>
	</ul>
</aside>
