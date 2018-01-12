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
<h1 align="center">Eligible Result</h1>
<div align="center">
	<%=application.getInitParameter("slogan") %>>
	<a href="<%=application.getInitParameter("homepage") %>">Home</a>
</div>
<form action="tax.html">
	<table cellpadding="10" bgcolor="wheat" style="margin: 0 auto">>
	<tr>
		<td>Employee Name</td>
		<td><%=request.getParameter("txtname") %></td>
	</tr>
	<tr>
		<td>Age</td>
		<td><%=request.getParameter("txtage") %></td>
	</tr>
	<tr>
		<td>Age</td>
		<td><%=request.getParameter("txtqual") %></td>
	</tr>
	<tr>
		<td>Eligible/NotEligible</td>
		<td><td><%=request.getAttribute("result") %></td></td>
	</tr>
	
	
	</table>
</form>
</body>
</html>