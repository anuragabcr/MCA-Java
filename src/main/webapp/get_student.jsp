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
<title>Insert title here</title>
</head>
<body>
<table border=1>
	<thead>Student Info</thead>
	<tr>
		<td>Name</td>
		<td>Roll</td>
		<td>Course</td>
		<td>Email</td>
		<td>Phone</td>
	</tr>
<%
	String phone = request.getParameter("phone");
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from register where phone="+phone);
	
	while(rs.next()){
		out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
	}
	con.close();
%>
</table>
</body>
</html>