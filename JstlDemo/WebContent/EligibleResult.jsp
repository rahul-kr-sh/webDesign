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

<c:if test="${param.txtage >=20 && param.txtage <=22 
				&&(param.txtqual=='be' || param.texqual=='btech')}">
		<c:set var="result" value="<span class='pass'>Eligible for java Fresher</span>"/>
</c:if>
<c:if test="${param.txtage <20 || param.txtage >22 
				||(param.txtqual=='be' && param.texqual=='btech')}">
		<c:set var="result" value="<span class='fail'>Not Eligible </span>"/>
</c:if>

<%@include file="Header.jsp" %>
<h1 align="center">Eligible Result</h1>

<form action="tax.html">
	<table cellpadding="10" bgcolor="wheat" style="margin: 0 auto">
	<tr>
		<td>Employee Name</td>
		<td>${param.txtname}</td>
	</tr>
	<tr>
		<td>Age</td>
		<td>${param.txtage}</td>
	</tr>
	<tr>
		<td>Age</td>
		<td>${param.txtqual}</td>
	</tr>
	<tr>
		<td>Eligible/NotEligible</td>
		<td>${result}</td>
	</tr>
	
	
	</table>
</form>
</body>
</html>