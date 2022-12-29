<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	out.print("Multiplication Table of 9<br>");
	for(int i=1;i<11;i++)
		out.print("9 * " + i + " = " + i*9 + "<br>");
%>
</body>
</html>