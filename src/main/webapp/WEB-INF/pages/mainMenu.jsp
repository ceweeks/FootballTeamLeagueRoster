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
<h2>Football League Roster</h2>
<p>Please select an option from the menu below</p>
<ul>
	<li><a href = "viewAllTeams.mvc">View all teams in the league</a></li>
	<li><a href = "viewAllPlayers.mvc">View all players in the league</a></li>
	<li><a href = "addTeam.mvc">Add a new team to the league</a></li>
</ul>

</body>
</html>