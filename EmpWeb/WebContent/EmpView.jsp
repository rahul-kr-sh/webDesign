<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-16"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="sapient.css" rel="stylesheet">
<link href="catlog.css" rel="stylesheet">
<style>
table div {
	background-color: wheat;
	position: absolute;
	border: 1px solid red;
	padding:5px;
}

table div div {
	background-color: blue;
	color: white;
}
</style>
<script>
function display(id){
	
	document.getElementById(id).style.display='block';
}

</script>

</head>
<body>
	<%@include file="Header.jsp"%>
<c:if test="${sessionScope.semp == null}">
	<jsp:forward page="Login.jsp">
		<jsp:param value="Please Login" name="msg"/>
	</jsp:forward>
</c:if>
	<section id="catlog">
	<h2>Employee List</h2>
	<div align="center">
	${msg}
		<h1>
			Page:${pgno}
			</h3>
	</div>
	<table>
		<thead>
			<th>Image</th>
			<th>Employee ID</th>
			<th>Employee Name</th>
			<th>Salary</th>
			<th>DOJ</th>
			<th></th>
		</thead>
		<tbody>
			<c:forEach items="${emplist}" var="e">
				<tr>
					<td><img alt="" src="viewimg?iname=${e.img}"></td>
					<td>${e.empId}</td>
					<td>${e.empName}</td>
					<td>${e.sal}</td>
					<td>${e.doj}</td>
					<td><input type="button" onclick="display(${e.empId})"
						value="edit">
						<div id="${e.empId}" style="display: none">
							<form action="update">
								<h4 align="center" style="color:blue;">Update Employee</h4>
								Emp Id	${e.empId}	</br></br>
								<input type="hidden" name="hideid" value="${e.empId}">
								<input type="hidden" name="pgid" value="${pgno}">
								<input tupe="hidden" name="requri" value="${pageScope.request.queryString}"/>
								Salary	<input type="text" name="txtsal" />	</br></br>
								<input type="submit" value="Update">		
							</form>
						</div></td>
				</tr>

			</c:forEach>
			<tr>
				<td colspan="3"><c:if test="${pgno >1}"><a href="viewall?pg=${pgno-1}">prev</a></c:if></td>
  <td colspan="3" align="right"><c:if test="${pgno < applicationScope.esize}"><a href="viewall?pg=${pgno+1}">next</a></c:if></td>
			</tr>
		</tbody>
	</table>
	</section>

 


	<%@include file="Footer.jsp"%>
</body>
</html>