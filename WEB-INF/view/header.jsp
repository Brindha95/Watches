
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<%@ page isELIgnored="false"%>
<html>
<head>
<c:set var="contextroot" value="${pageContext.request.contextPath}"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<script
	src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>

</head>
<header class="container"> </header>
<section class="container">
<div class="row">
	<div class="col-md-3 leftNav"></div>
	<div class="col-md-6 content"></div>
	<div class="col-md-3 reletedContent"></div>
</div>


</section>

<script src="Scripts/jquery-1.9.1.js"></script>
<script src="Scripts/bootstrap.js"></script>
<nav class="navbar navbar-inverse container-fluid navbar-fixed-top">
<div>
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<center>
			<a class="navbar-brand" href="#"><img
				src="resources/img/watch-shop-logo.jpg" alt="Basica"></a>
		</center>


	</div>
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<%-- <url:url value="/watches" var="url"></url:url> --%>
			<li class="active"><a href="home"> <span
					class="glyphicon glyphicon-home"></span> Home
			</a></li>
			<url:url value="/aboutus" var="url"></url:url>
			<li><a href="${url }">About Us</a></li>

			<security:authorize access="hasRole('ROLE_ADMIN')">

				<li><a href="productform">Add New Product</a></li>
			</security:authorize>
			<security:authorize access="hasRole('ROLE_ADMIN')">

				<li><a href="adminproductlist">Admin product</a></li>
			</security:authorize>


			<url:url value="/productlist" var="url"></url:url>
			<li><a href="${url }">Browse all products</a></li>
			<url:url value="/cart" var="url"></url:url>
			<li><a href="${url}">Cart</a></li>
			<url:url value="/blog" var="url"></url:url>
			<li><a href="${url }">Blog</a></li>
			<url:url value="/contact" var="url"></url:url>
			<li><a href="${url }"><span class="glyphicon glyphicon-shopping-cart"></span>Add Cart</a></li>
			<url:url value="#" var="url"></url:url>
			<li><a href="${url }"> <span
					class="glyphicon glyphicon-king"></span>Category
			</a></li>


		</ul>
		<form class="navbar-form navbar-left" role="search">
			<div class="form-group-sm">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search">
					<span class="input-group-btn">
						<button class="btn btn-success btn-sm">Go!</button>
					</span>
				</div>
			</div>

		</form>
		<ul class="nav navbar-nav navbar-right">

			<c:if test="${pageContext.request.userPrincipal.name!=null }">
				<li><a href="#">Welcome
						${pageContext.request.userPrincipal.name }</a></li>
			</c:if>
			<url:url value="/registrationform" var="url"></url:url>

			<c:if test="${pageContext.request.userPrincipal.name==null }">
				<li><a href="${url}"><span
						class="glyphicon 
                    glyphicon-user"></span>
						Register</a></li>
				<url:url value="/login" var="url"></url:url>
				<li><a href="login"><span
						class="glyphicon 
                    glyphicon-log-in"></span>
						Login</a></li>
			</c:if>



			<c:if test="${pageContext.request.userPrincipal.name !=null }">
				<li><a href="<c:url value="/j_spring_security_logout"></c:url>">logout</a></li>
			</c:if>





		</ul>
	</div>
	<!-- /.navbar-collapse -->
</div>
<!-- /.container-fluid --> </nav>



</html>