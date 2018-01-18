<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="sapient.css" rel="stylesheet" />

</head>
<body>
	<%@include file="Header.jsp"%>
	<c:if test="${sessionScope.semp == null}">
	<jsp:forward page="Login.jsp">
		<jsp:param value="Please Login" name="msg"/>
	</jsp:forward>
</c:if>
	<section>
	
	     <form action="add" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td>ID</td>
					<td><input type="text" name="txtid"/></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="txtname"/></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="txtpass"/></td>
				</tr>
				<tr>
					<td>Salary</td>
					<td><input type="text" name="txtsal"/></td>
				</tr>
				
				<tr>
					<td>Dept</td>
					<td><select name="txtdept">
				    <c:forEach items="${applicationScope.dlist }" var="d">
						<option value="${d.deptId}">${d.deptName}</option>
					</c:forEach>
				</select></td>
				</tr>
				<tr>
					<td>Upload your image</td>
					<td><input type="file" name="txtfile"/></td>
				</tr>
				<tr><td colspan="2" align="center">
				<input type="submit" />
				</td></tr>
			</table>
		</form>
	
		

		
	</section>
	<%@include file="Footer.jsp"%>
</body>
</html>