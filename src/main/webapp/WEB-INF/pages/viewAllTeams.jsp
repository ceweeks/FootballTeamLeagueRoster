<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Teams</title>
</head>
<body>
	<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td>Team Name</td>
				<td>${item.teamName}</td>
			</tr>

		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<a href="form.mvc">Add a new player</a><br/>
	<a href="addTeam.mvc">Add a new team</a>
</body>

</html>