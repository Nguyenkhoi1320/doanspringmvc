<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header id="header" class="header fixed-top d-flex align-items-center">

	<div class="d-flex align-items-center justify-content-between">
		<a href="index.html" class="logo d-flex align-items-center"> <img
			src="assets/img/logo.png" alt=""> <span
			class="d-none d-lg-block">Shopping</span>
		</a> <i class="bi bi-list toggle-sidebar-btn"></i>
	</div>
	<!-- End Logo -->

	<div class="search-bar">
		<form class="search-form d-flex align-items-center" method="POST"
			action="#">
			<input type="text" name="query" placeholder="Search"
				title="Enter search keyword">
			<button type="submit" title="Search">
				<i class="bi bi-search"></i>
			</button>
		</form>
	</div>
	<!-- End Search Bar -->

	<nav class="header-nav ms-auto">
		<ul class="d-flex align-items-center">
			<li class="nav-item d-block d-lg-none"><a
				class="nav-link nav-icon search-bar-toggle " href="#"> <i
					class="bi bi-search"></i>
			</a></li>
			<li class="nav-item dropdown pe-3"><a
				class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
				data-bs-toggle="dropdown"> <img src="${image}"
					alt="Profile" class="rounded-circle"> <span
					class="d-none d-md-block dropdown-toggle ps-2">${namee}</span>
			</a>
				<ul
					class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
					<li class="dropdown-header">
						<h6>${namee}</h6> <span>Web Designer</span>
					</li>
					<li>
						<hr class="dropdown-divider">
					</li>
					<li><a class="dropdown-item d-flex align-items-center"
						href="users-profile.html"> <i class="bi bi-person"></i> <span>Hồ sơ cá nhân</span>
					</a></li>
					<li>
						<hr class="dropdown-divider">
					</li>
					<li><a class="dropdown-item d-flex align-items-center"
						href="users-profile.html"> <i class="bi bi-gear"></i> <span>Cài đặt tài khoản</span>
					</a></li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li><a class="dropdown-item d-flex align-items-center"
						href="pages-faq.html"> <i class="bi bi-question-circle"></i> <span>Hỗ trợ?</span>
					</a></li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li><a class="dropdown-item d-flex align-items-center"
						href="${pageContext.request.contextPath}/login/logout"> <i class="bi bi-box-arrow-right"></i> <span>Đăng xuất</span>
					</a></li>

				</ul></li>

		</ul>
		<!-- End Icons Navigation -->
</header>