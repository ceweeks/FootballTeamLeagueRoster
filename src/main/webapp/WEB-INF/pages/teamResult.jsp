<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team result</title>
</head>
<body> <h2>Team added</h2>
    <table>
        <tr>
            <td>Team Name</td>
            <td>${t.teamName}</td>
        </tr>
        </table>
<a href = "viewAllTeams.mvc">View all teams</a>
</body>

</html>