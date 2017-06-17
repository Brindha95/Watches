<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FORM</title>
</head>
<body>
	<url:url value="/int" var="url"></url:url>
	<form:form action="int" method="POST" commandName="person">
		<table border="0">

			<tr>
				<td><label for="Personid">Enter the Personid</label></td>
				<td><form:input path="personId" /></td>
			</tr>
			<tr>
				<td><label for="Firstname">Enter the Firstname</label></td>
				<td><form:input path="firstname" /></td>
			</tr>
			<tr>
				<td><label for="Lastname">Enter the Lastname</label></td>
				<td><form:input path="lastname" /></td>
			</tr>
			<tr>
				<td><label for="Email">Enter the email</label></td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td><label for="Phone">Enter the phone</label></td>
				<td><form:input path="phone" /></td>
			</tr>
			<td><input type="submit" value="Register"></td>

		</table>
	</form:form>


</body>
</html>