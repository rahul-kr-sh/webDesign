<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DEpartments</title>
<link href="sapient.css" rel="stylesheet">
<link href="catlog.css" rel="stylesheet">
</head>
<body>
<%@include file="Header.jsp"%>
<c:if test="${sessionScope.semp == null}">
	<jsp:forward page="Login.jsp">
		<jsp:param value="Please Login" name="msg"/>
	</jsp:forward>
</c:if>
<section>
<h2>View Departments</h2>
<div>
	<form action="viewbydept">
		Choose Department
			<select name="txtdid">
				<c:forEach items="${applicationScope.dlist}" var="d">
					<option value="${d.deptId}">${d.deptName}</option>
				</c:forEach>
			</select>
	<input type="submit" value="view">
	</form>
</div>
</section>

<%@include file="Footer.jsp"%>
</body>
</html>