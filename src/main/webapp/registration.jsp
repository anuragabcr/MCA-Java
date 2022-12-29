<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% 
Class.forName("com.mysql.jdbc.Driver"); 
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/world?characterEncoding=utf8","root","MySQL");  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Server Response</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String roll = request.getParameter("roll");
	String course = request.getParameter("course");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	
	PreparedStatement stmt = con.prepareStatement("insert into register values(?, ?, ?, ?, ?)");
	stmt.setString(1, name);
	stmt.setString(2, roll);
	stmt.setString(3, course);
	stmt.setString(4, email);
	stmt.setString(5, phone);
	stmt.execute();
	
	out.print("Registration Successfull");
	con.close();
%>

<form action="student_list.jsp">
<input type="submit" value="Show Student List" />
</form>
</body>
</html>