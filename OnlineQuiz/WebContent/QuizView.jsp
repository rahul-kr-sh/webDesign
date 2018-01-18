<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Answer Questions</title>
<link href="sapient.css" rel="stylesheet"/>
</head>
<body>
<%@include file="Header.jsp" %>
<section>
<h2>Play Quiz</h2>
<div>
<form action="quiz" method="post">
${question.qdesc}<br/><br/>
<input type="radio" name="ques" value="${question.opta}"/>${question.opta}<br/>
<input type="radio" name="ques" value="${question.optb}"/>${question.optb}<br/>
<input type="radio" name="ques" value="${question.optc}"/>${question.optc}<br/>

<input type="submit" name="btn"value="prev"/>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" name="btn"value="next"/>
</form>
</div>
</section>
<%@include file="Footer.jsp" %>
</body>
</html>