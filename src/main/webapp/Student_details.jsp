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
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String dob = request.getParameter("dob");
	
	out.print(num+ "\t"+ name + "\t" + gender + "\t"+ dob);
%>
</body>
</html>