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
<h1 align="center">Your Updateed Profile</h1>
<div align="center">
	<%=application.getInitParameter("slogan") %>>
	<a href="<%=application.getInitParameter("homepage") %>>">Home</a>
</div>
<% request.getRemoteAddr(); %>>
<table cellpadding="10" bgcolor="wheat" style="margin: 0 auto">
		<tr>
			<td>Name</td>
			<td><%=request.getParameter("txtname") %></td>
		</tr>
		<tr>
			<td>Team</td>
			<td><%=request.getParameter("team") %></td>
		</tr>
		<tr>
			<td>Skills</td>
			<td>
			<ul>
			<% 
			
			String []skills=request.getParameterValues("checkskills");
				for(String str:skills){
					out.println("<li>"+ str + "</li>");
				}
			
			%>
			</ul>
			</td>
		</tr>
</body>
</html>