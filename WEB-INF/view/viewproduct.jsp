
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
.add-to-cart, .like {
	background: #ff9f1a;
	padding: 1.2em 1.5em;
	border: none;
	text-transform: UPPERCASE;
	font-weight: bold;
	color: #fff;
	-webkit-transition: background .3s ease;
	transition: background .3s ease;
}

.add-to-cart:hover, .like:hover {
	background: #b36800;
	color: #fff;
}

.orange {
	background: #ff9f1a;
}

.green {
	background: #85ad00;
}

.blue {
	background: #0076ad;
}

.tooltip-inner {
	padding: 1.3em;
}

.m14 {
	height: 300px;
	box-shadow: 0px 0px 2px;
}

body {
	background: #148188;
}

h2 {
	color: #fff;
}

.d14:hover {
	background: #ffffff;
	color: #000;
}


img {
	border: 4px solid #fff;
}
</style>
<body>
	<br>
	<br>
	<br>
	<br>

	<br>
	<br>
	
	<div class="section section-white">
		<div class="container">
			<div class="row">

				<center><div class="section-title">
					<h1>Products</h1>
				</div>


				<ul class="grid cs-style-3">
					<div class="col-md-4 col-sm-4">                                                                                  
						
						<strong>PRODUCT NAME</strong>: ${product.name  }  <br>
						<url:url value="/resources/img/${product.id}.png" var="url"></url:url>
						<center><img src="${url}" height="300" width="650">

						<br><div class="action">
						
						
                        <url:url value="/addToCart/{id}" var="url"></url:url>

	
							<button class="add-to-cart btn btn-default" type="button"><a href="${contextroot}/addToCart/{id}">Add
								to cart</button>          
								<url:url value="/productlist" var="url"></url:url>

								 <button class="add-to-cart btn btn-default" type="button" ><a href="${url}"> All Products</a>
								</button>
							
                            
						</div>
					</div>


					</ul></div></div></div>
<div class="section">
	    	<div class="container">
				<div class="row">
					<!-- Blog Post Excerpt -->
					<div class="col-sm-6">
						<div class="blog-post blog-single-post">
							<div class="single-post-title">
								<h2>Description</h2>
							</div>
						
							<div class="single-post-info">
								<i class="glyphicon glyphicon-time"></i>6 jun, 2017 <a href="#" title="Show Comments"><i class="glyphicon glyphicon-comment"></i>11</a>
							</div>
							
							<div class="single-post-content">
                                <br>
								<p>2017 crystal 3atm water resistant luxury quartz watch descriptions</p>

<strong>PRODUCT NAME</strong>:              ${product.name }  <br>
<strong>PRICE</strong>       :              ${product.price }  <br>
<strong>MANUFACTURE</strong> :         ${product.manufacturer}  <br>
<strong>DESCRIPTION</strong> :		${product.description}<br>
				
							</div>
						</div>
					</div>
					<!-- End Blog Post Excerpt -->
					

				
</body>



</html>