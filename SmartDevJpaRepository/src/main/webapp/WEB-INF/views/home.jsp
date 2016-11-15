<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
</head>
<body>
	In ra message :${message}
	<h1>Wel come to Home</h1>
	<table>
		<c:forEach var="list" items="${list}">
			<tr>
				<td>${list.user_id}</td>
				<td>${list.user_name }</td>
				<td>${list.email }</td>
			</tr>
		</c:forEach>
	</table>
	<h1>List Category</h1>
	<table>
		<c:forEach var="listCategory" items="${listCategory}">
			<tr>
				<td>${listCategory.categoryId }</td>
				<td>${listCategory.name }</td>
				<td>${listCategory.status }</td>
			</tr>
		</c:forEach>
	</table>
	<h1>List Product</h1>
	<table>
		<c:forEach var="listProduct" items="${listProduct}">
			<tr>
				<td>${listProduct.productId}</td>
				<td>${listProduct.categoryId }</td>
				<td>${listProduct.name }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>