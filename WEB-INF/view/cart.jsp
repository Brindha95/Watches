<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
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
<style>
body {
	
}
</style>
<body>
	<body>
<div class="container">
  <table class="table table-bordered">
    
<tr>

<th><center>Product Image</center></th><br>
<th><center> Product Id</center> </th><br>
<th><center> Quantity</center></th><br>
<th><center> Customer Id</center> </th><br>
<th><center> Category Details</center></th><br>
<th><center> Action</center></th><br>
</tr>

 <c:forEach items="${cartitems}" var="cartitem">
<tr>
<form action="<c:url value="/updateCartItem/${cartitem.id}"/>" method="get"/>
	

	


<url:url value="/resources/img/${cartitem.id}.png" var="url"></url:url>
<td><center><img src="${url }" height="75" width="100"></center></td>

<td><center>${cartitem.name}</center><br></td>
<td><center>  ${cartitem.quantity}</center><br></td>
<td><center>  ${cartitem.customerid}</center><br></td>
<td>${cartitem.category.categoryDetails }</td>


<td><center><a href="${contextRoot}/viewproduct/${cartitem.id}"><span class="glyphicon glyphicon-info-sign">  View  </span></a></center>
<br>


<center><a href="${contextRoot}/editproduct/${cartitem.id}"><span class="glyphicon glyphicon-pencil">  Update  </span></a></center>
<br>
<center><a href="${contextRoot}/deleteproduct/${cartitem.id}"><span class="glyphicon glyphicon-trash">    Delete    </span></a></center>

</td>

</tr>
</c:forEach>
</table>
</div>


</body>
</body>
</html>