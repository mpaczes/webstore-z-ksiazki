<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="http://localhost:8080/webstore-mp/css/bootstrap.min.css">
		<title>Produkty</title>
	</head>
	<body>
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Produkty</h1>
					<p>Wszystkie produkty dostepne w naszym sklepie</p>
				</div>
			</div>
		</section>
		
		<section class="container">
			<div class="row">
				<c:forEach items="${products}" var="product">
					<div class="col-sm-6 col-md-3" style="padding-bottom: 15px;">
						<div class="thumbnail">
							<div class="caption">
								<h3>${product.name}</h3>
								<p>${product.description}</p>
								<p>${product.unitPrice} PLN</p>
								<p>Liczba sztuk w magazynie : ${product.unitsInStock}</p>
								<p>
									<a href=" <spring:url value="/spring/products/product?id=${product.productId}" /> " class="btn btn-primary">
										<span class="glyphicon-info-sign glyphicon"></span> Sczegoly
									</a>
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</section>
		<script type="text/javascript" src="http://localhost:8080/webstore-mp/js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="http://localhost:8080/webstore-mp/js/bootstrap.min.js"></script>
	</body>
</html>