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
	<h2>Team Created</h2>
	<p>The below team has been created.</p><br>
    <table>
        <tr>
            <td>Team Name: </td>
            <td>${t.teamName}</td>
        </tr>
        </table>
	<br>
	<a href="home.mvc">Return to main menu</a>
</body>

</html>