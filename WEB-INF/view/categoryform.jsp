<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<%@ page isELIgnored="false"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<url:url var="url" value="/categorydetails"></url:url>
	<form:form action="${url }" modelAttribute="category" method="post">


		<br>
		<div class="form-group">
			<label for="cid">Category Id</label>
			<form:input path="cid" disabled="true"></form:input>
			<form:errors path="cid" cssStyle="color:red"></form:errors>
		</div>

		<br>
		<div class="form-group">
			<label for="categoryDetails">Enter category name</label>
			<form:input path="categoryDetails"></form:input>
			<form:errors path="categoryDetails" cssStyle="color:red"></form:errors>
		</div>
		<input type="submit" value="Register">

	</form:form>
</body>
</html>