<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTERED</title>
</head>
<body>
	<url:url value="/int" var="url"></url:url>

	<h2>Your form submitted and registered successfully</h2>

	PERSONID:${person.personId}
	<br> FIRSTNAME:${person.firstname}
	<br> LASTNAME:${person.lastname}
	<br> EMAIL:${person.email}
	<br> PHONE:${person.phone}
	<br>



</body>
</html>