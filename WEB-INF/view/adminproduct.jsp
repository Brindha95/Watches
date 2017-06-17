<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>


		<table id="productTable" class="table table-hower">
			<thead>
				<tr>
					<th>Image</th>
					<th>Name</th>
					<th>Category</th>
					<th>Price</th>
					<th>Description</th>
					<th>Manufacturer</th>
					<th>ProductId</th>
				</tr>
			</thead>
		</table>
	
	<script>
		$('#productTable')
				.DataTable(
						{
							ajax : {
								url : 'http://localhost:8081/Springform/get/product/list',
								dataSrc : ''
							},
							columns : [
									{
										data : 'id',
										mRender : function(data, type, row) {
											return '<img src="resources/img/'+data+'.png" height="85" width="100"><br><a href="${contextRoot}/viewproduct/'+data+'"><span class="glyphicon glyphicon-info-sign">  View  </span></a><br><a href="${contextRoot}/editproduct/'+data+'"><span class="glyphicon glyphicon-info-sign"> Update </span></a><br><a href="${contextRoot}/deleteproduct/'+data+'"><span class="glyphicon glyphicon-info-sign"> Delete </span></a>';
										}
									}, {
										data : 'name'
									}, {
										data : 'category.categoryDetails'
									}, {
										data : 'price'
									}, {
										data : 'description'
									}, {
										data : 'manufacturer'
									}, {
										data : 'id'
									} ]
						});
	</script>
	<br>
	<br>
	<br>

</body>
</html>