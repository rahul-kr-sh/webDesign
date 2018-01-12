<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% %>
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
<h1 align="center">Sapient Technologies</h1>

<hr/>

<table cellpadding="10" style="margin:0 auto">
	<tr>
		<td><a href="TaxFrm.jsp">Tax Calculation</a></td>
	</tr>
	<tr>
		<td><a href="SkillFrm.jsp">Upadate Profile</a></td>
	</tr>
	<tr>
		<td><a href="QuizFrm.jsp">Play Quiz</a></td>
	</tr>
	<tr>
		<td><a href="EligibleFrm.jsp">Eligible for java Developer</a></td>
	</tr>
	<tr>
		<td><a href="HtmlTutorial.jsp">Download MX Application</a></td>
	</tr>
</table>

</body>
</html>