<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Football Roster</title>
</head>
<body>
	<h2>Player Created</h2>
	<p>The below player has been created.</p><br>
    <table>
        <tr>
            <td>First Name: </td>
            <td>${p.firstName}</td>
        </tr>
        <tr>
            <td>Jersey Number: </td>
            <td>${p.number}</td>
        </tr>
        <tr>
            <td>Height: </td>
            <td>${p.height}</td>
        </tr>
        <tr>
            <td>Weight: </td>
            <td>${p.weight}</td>
        </tr>
        <tr>
            <td>Position: </td>
            <td>${p.position}</td>
        </tr>
        <tr>
            <td>Grade Level: </td>
            <td>${p.grade}</td>
        </tr>
    </table>
	<br>
	<a href="home.mvc">Return to main menu</a>
</body>

</html>