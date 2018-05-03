<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="http://localhost:8080/webstore-mp/css/bootstrap.min.css">
		<title>Produkty</title>
	</head>
	<body>
	
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Produkty</h1>
					<p>Dodaj produkty</p>
				</div>
			</div>
		</section>
		
		<section class="container">
			<form:form modelAttribute="newProduct" class="form-horizontal">
				<fieldset>
					<legend>Dodaj nowy produkt</legend>
					
					<div class="form-group">
						<label class="control-label col-lg-2" for="productId">
							<spring:message code="addProduct.form.productId.label" />
						</label>
						<div class="col-lg-10">
							<form:input id="productId" path="productId" type="text" class="form:input-large" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-lg-2" for="name">
							<spring:message code="addProduct.form.name.label" />
						</label>
						<div class="col-lg-10">
							<form:input id="name" path="name" type="text" class="form:input-large" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-lg-2" for="unitPrice">
							<spring:message code="addProduct.form.unitPrice.label" />
						</label>
						<div class="col-lg-10">
							<form:input id="unitPrice" path="unitPrice" type="text" class="form:input-large" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-lg-2" for="manufacturer">
							<spring:message code="addProduct.form.manufacturer.label" />
						</label>
						<div class="col-lg-10">
							<form:input id="manufacturer" path="manufacturer" type="text" class="form:input-large" />
						</div>
					</div>
					
					<!-- podobnie utworzyc znacznik 'form:input' dla pol : , ,  -->
					
					<div class="form-group">
						<label class="control-label col-lg-2" for="category">
							<spring:message code="addProduct.form.category.label" />
						</label>
						<div class="col-lg-10">
							<form:input id="category" path="category" type="text" class="form:input-large" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-lg-2" for="unitsInStock">
							<spring:message code="addProduct.form.unitsInStock.label" />
						</label>
						<div class="col-lg-10">
							<form:input id="unitsInStock" path="unitsInStock" type="text" class="form:input-large" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-lg-2" for="unitsInOrder">
							<spring:message code="addProduct.form.unitsInOrder.label" />
						</label>
						<div class="col-lg-10">
							<form:input id="unitsInOrder" path="unitsInOrder" type="text" class="form:input-large" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-lg-2" for="description">
							<spring:message code="addProduct.form.description.label" />
						</label>
						<div class="col-lg-10">
							<form:textarea id="description" path="description" rows="2" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-lg-2" for="discontinued">
							<spring:message code="addProduct.form.discontinued.label" />
						</label>
						<div class="col-lg-10">
							<form:checkbox id="discontinued" path="discontinued" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-lg-2" for="condition">
							<spring:message code="addProduct.form.condition.label" />
						</label>
						<div class="col-lg-10">
							<form:radiobutton path="condition" value="new" /> <spring:message code="addProduct.form.condition.new.label" />
							<form:radiobutton path="condition" value="old" /> <spring:message code="addProduct.form.condition.old.label" />
							<form:radiobutton path="condition" value="refurbished" /> <spring:message code="addProduct.form.condition.refurbished.label" />
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<input type="submit" id="btnAdd" class="btn btn-primary" value="Dodaj" />
						</div>
					</div>
				</fieldset>
			</form:form>
		</section>
	
		<script type="text/javascript" src="http://localhost:8080/webstore-mp/js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="http://localhost:8080/webstore-mp/js/bootstrap.min.js"></script>
	</body>
</html>