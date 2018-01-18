<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
<header>
	<span>People Portal</span>
	<div align="right">
	<c:if test="${sessionScope.semp != null}">
		${sessionScope.semp.empName}
		<a href="logout">Logout</a>	
	</c:if>
	
	<c:if test="${sessionScope.semp == null}">
		<a href="Login.jsp">Login</a>	
	</c:if>
	</div>
	<hr/>
</header>