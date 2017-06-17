<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>
<html>
<body background=resources/img/background.jpg>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>


	<div class="container-wrapper">
		<div class="container">

			<form:form action="products" modelAttribute="product" method="post"
				enctype="multipart/form-data">
				<br>
				<br>
				<br>
				<br>
				<div class="form-group">
					<div class="col-md-5">
						<label for="id">Enter Product Id</label>
					</div>
					<div class="col-md-9">
						<form:input path="id" disabled="true"></form:input>
						<form:errors path="id" cssStyle="color:red"></form:errors>
					</div>
				</div>

				<br>
				<div class="form-group">
					<div class="col-md-5">
						<label for="name">Enter Product Name</label>
					</div>
					<div class="col-md-9">
						<input id="name" name="name" type="text" />
						<form:errors path="name" cssStyle="color:red"></form:errors>
					</div>
				</div>

				<br>
				<div class="form-group">
					<div class="col-md-5">
						<label for="description">Enter Description</label>
					</div>
					<div class="col-md-9">
						<input id="description" name="description" type="text" />
						<form:errors path="description" cssStyle="color:red"></form:errors>
					</div>
				</div>

				<br>
				<div class="form-group">
					<div class="col-md-5">
						<label for="manufacturer">Enter Manufacturer</label>
					</div>
					<div class="col-md-9">
						<input id="manufacturer" name="manufacturer" type="text" />
						<form:errors path="manufacturer" cssStyle="color:red"></form:errors>
					</div>
				</div>

				<br>
				<div class="form-group">
					<div class="col-md-5">
						<label for="price">Enter Price</label>
					</div>
					<div class="col-md-9">
						<input id="price" name="price" type="text" value="0.0" />
						<form:errors path="price" cssStyle="color:red"></form:errors>
					</div>
				</div>

				<br>


				<div class="form-group">
					<div class="col-md-5">

						<label for="category">Select Category</label>
						<c:forEach items="${categorydetails}" var="c">

							<form:radiobutton path="category.cid" value="${c.cid }" /> ${c.categoryDetails }
		
		</c:forEach>

						<div class="form-group">
							<label for="image">Upload Image</label> <input type="file"
								name="image">
						</div>

						<div>
							<input type="submit" value="Add Product">
						</div>

					</div>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>