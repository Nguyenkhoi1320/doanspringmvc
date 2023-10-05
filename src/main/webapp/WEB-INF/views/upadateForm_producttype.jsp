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
			<h1 class="mt-5 mb-4 text-center">Edit ProductType</h1>
			<form:form action="updateProduct" method="post"
				modelAttribute="productType">				
				<form:hidden path="id" />
				<div class="mb-3">
					<form:label path="name" class="form-label">Name:</form:label>
					<form:input path="name" class="form-control" />
					<form:errors path="name" class="text-danger" />
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