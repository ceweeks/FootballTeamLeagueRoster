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
<h2>Add a Team</h2>
<p>Please assign a team name below to create<br>
a new team in the league.</p><br>
<mvc:form modelAttribute="team" action="resultTeam.mvc" id="teamForm">
	<table>
	    <tr>
	        <td><mvc:label path="teamName">Team Name</mvc:label></td>
	        <td><mvc:input path="teamName" id="teamName" name="teamName" type="text"/></td>
	    </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" id="submitButton"/>
	        </td>
	    </tr>
	</table>  
</mvc:form>
	<br>
	<a href="home.mvc">Return to main menu</a>

<br>

</body>

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.j"></script>
<script type="text/javascript">

$(document).ready(function() {
	
	$('#teamForm').submit(function(event) {
		
		//Validate team name has value
		if($('#teamName').val().length < 1){
			alert("Team name required.");
			event.preventDefault();
		}
	
	});
	
});

</script>


</html>