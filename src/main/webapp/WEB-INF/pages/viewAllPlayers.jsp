<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Football Roster</title>
</head>
<body>
	<h2>All Players</h2>
	<p>Below is a list of all players in the league.</p><br>
	<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td>First Name: </td>
				<td>${item.firstName}</td>
			</tr>
			<tr>
				<td>Jersey Number: </td>
				<td>${item.number}</td>
			</tr>
			<tr>
				<td>Height: </td>
				<td>${item.height}</td>
			</tr>
			<tr>
				<td>Weight: </td>
				<td>${item.weight}</td>
			</tr>
			<tr>
				<td>Position: </td>
				<td>${item.position}</td>
			</tr>
			<tr>
				<td>Grade Level: </td>
				<td>${item.grade}</td>
			</tr>

		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
		<br>
	<a href="home.mvc">Return to main menu</a>
</body>

</html>