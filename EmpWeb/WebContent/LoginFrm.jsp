<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="sapient.css" rel="stylesheet">
<link href="catlog.css" rel="stylesheet">
</head>
<body>
	<%@include file="Header.jsp"%>

	<section>

		<h2>Login Form</h2>
		<div>
		${msg}
			<form action="login" method="post">
				<fieldset>
					<pre>
			User Id		<input type="text" name="txtid"/>
			Password	<input type="password" name="txtpass"/>
				<input type="submit" value="Login">
				</pre>
			</form>
			</fieldset>
		</div>
	</section>

	<%@include file="Footer.jsp"%>
</body>
</html>