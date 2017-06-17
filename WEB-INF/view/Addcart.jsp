<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</head>
<style>
body {
	
}

.table>tbody>tr>td, .table>tfoot>tr>td {
	vertical-align: middle;
}

@media screen and (max-width: 600px) {
	table#cart tbody td .form-control {
		width: 20%;
		display: inline !important;
	}
	.actions .btn {
		width: 36%;
		margin: 1.5em 0;
	}
	.actions .btn-info {
		float: left;
	}
	.actions .btn-danger {
		float: right;
	}
	table#cart thead {
		display: none;
	}
	table#cart tbody td {
		display: block;
		padding: .6rem;
		min-width: 320px;
	}
	table#cart tbody tr td:first-child {
		background: #333;
		color: #fff;
	}
	table#cart tbody td:before {
		content: attr(data-th);
		font-weight: bold;
		display: inline-block;
		width: 8rem;
	}
	table#cart tfoot td {
		display: block;
	}
	table#cart tfoot td .btn {
		display: block;
	}
}
</style>
<body>
	<br>
	<br>
	<br>

	<div class="container">
		<table id="cart" class="table table-hover table-condensed">
			<thead>
				<tr>
					<th style="width: 50%">ProductImage</th>
					<th style="width: 10%">ProductId</th>
					<th style="width: 10%">Quantity</th>
					<th style="width: 10%">CustomerId</th>
					<th style="width: 10%" class="text-center">Subtotal</th>
					<th style="width: 10%">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cartitems}" var="cartitem">
					<form action="<c:url value="/updateCartItem/${cartitem.id}"/>"
						method="get">
						<tr>
							<th><img
								src="<c:url value='/resources/img/${cartitem.prodid}.jpg'/>"
								width="100" height="100" /></th>
							<th>${cartitem.prodid}</th>

							<th><input type="text" name="qty"
								value="${cartitem.quantity}" /></th>

							<th>${cartitem.customerid}</th>

							<th>${cartitem.subtotal}</th>



							<th><input type="submit" value="UPDATE"
								class="btn btn-xs btn-success btn-block" /></th>

						</tr>
					</form>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>