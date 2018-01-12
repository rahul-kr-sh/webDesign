<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
 a{
	background-color: blue;
	color: white;
	text-decoration: none;
	border-radius: 5px;
	padding:5px;
	box-shadow: 5px 5px 5px gray;
}

 a:HOVER {
	background-color:yellow;
	color:black;
	text-decoration: underline;
}
</style>
</head>
<body>
<%@include file="Header.jsp" %>
<h1 align="center">Update your skills</h1>
<hr>

<form action="SkillResult.jsp">
	<table cellpadding="10" bgcolor="wheat" style="margin: 0 auto">
		<tr>
			<td>Name</td>
			<td><input type="text" name="txtname"></td>
		</tr>
		<tr>
			<td>Team</td>
			<td><input type="radio" name="team" value="gm">GM
			<input type="radio" name="team" value="nitro">Nitro
			<input type="radio" name="team" value="gs">Government Services</td>
		</tr>
		<tr>
			<td>Skills</td>
			<td><input type="checkbox" name="checkskills" value="java">Java<br/>
			<input type="checkbox" name="checkskills" value="jee">J2EE<br/>
			<input type="checkbox" name="checkskills" value="spring">Spring<br/>
			<input type="checkbox" name="checkskills" value="hibernate">Hibernate<br/>
			<input type="checkbox" name="checkskills" value="angular">Angular JS<br/>
			<input type="checkbox" name="checkskills" value="react">React<br/>
			<input type="checkbox" name="checkskills" value="hybris">Hybris<br/>
			</td>
		</tr>
		<tr>
			
			<td colspan="2" align="center">
				<input type="submit" value="Check Skill">
			</td>
		</tr>
	</table>
</form>

</body>
</html>