<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<h1 align="center">Your Updateed Profile</h1>

<% request.getRemoteAddr(); %>>
<table cellpadding="10" bgcolor="wheat" style="margin: 0 auto">
		<tr>
			<td>Name</td>
			<td>${param.txtname}</td>
		</tr>
		<tr>
			<td>Team</td>
			<td>${param.team}</td>
		</tr>
		<tr>
			<td>Skills</td>
			<td>
				<ul>
					<c:forEach items="${paramValues.checkskills}" var="skill">
						<li>${skill}</li>
					</c:forEach>
				</ul>
			</td>
		</tr>
		<tr>
			<td>Images</td>
			<td>
				<c:forEach begin="1" end="3" var="index">
					<img src="images/computer${index}.jpg" height="50" width="50">
				</c:forEach>
			</td>
		</tr>
</table>
</body>
</html>