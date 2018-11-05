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
<h2>All Teams</h2>
<p>Below is a list of all teams in the league. Select a team<br>
to add a player or view all players.</p><br>
<mvc:form modelAttribute="team" action="playerForm.mvc" id="selectTeamForm" method="post">
	<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td><input type="radio" name="id" path="id" value="${item.id}" required/></td>
				<td>Team Name: </td>
				<td>${item.teamName}</td>
				<td><mvc:hidden path="teamName" value="${item.teamName}"/></td>
			</tr>
		</table>		
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	
	<input type="submit" value="Add a Player to the Team" id="addPlayerButton" name="addPlayer">
	<input type="submit" value="View all Players of the Team" id="viewPlayersButton" name="viewPlayers">
</mvc:form>	
	<br>
	<a href="home.mvc">Return to main menu</a>
</body>
</html>