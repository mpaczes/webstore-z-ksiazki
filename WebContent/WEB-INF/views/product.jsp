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
		<title>Produkt</title>
	</head>
	<body>
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Produkt</h1>
				</div>
			</div>
		</section>
		
		<section class="container">
			<div class="row">
					<div class="col-md-5">
						<h3>${product.name}</h3>
						<p>${product.description}</p>
						<p>
							<strong>Kod produktu : </strong>
							<span class="label label-warning">${product.productId}</span>
						</p>
						<p>
							<strong>Producent : </strong>
							<span>${product.manufacturer}</span>
						</p>
						<p>
							<strong>Kategoria : </strong>
							<span>${product.category}</span>
						</p>
						<p>
							<strong>Dostepna liczba sztuk : </strong>
							<span>${product.unitsInStock}</span>
						</p>
						<h4>${product.unitPrice} PLN</h4>
						<p>
							<a href="#" class="btn btn-warning btn-large">
								<span class="glyphicon-shopping-cart glyphicon"></span> Zamow teraz
							</a>
							<a href=" <spring:url value="/spring/products" /> " class="btn btn-default">
								<span class="glyphicon-hand-left glyphicon"></span> Wstecz
							</a>
						</p>
					</div>
			</div>
		</section>
		
		<script type="text/javascript" src="http://localhost:8080/webstore-mp/js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="http://localhost:8080/webstore-mp/js/bootstrap.min.js"></script>
	</body>
</html>