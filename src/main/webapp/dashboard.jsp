<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Using Session</h2>
Here we are using Session to display user email id.<br>
<%
out.print(session.getAttribute("user"));
%>
</body>
</html>