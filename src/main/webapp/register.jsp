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
<title>Registration Page </title>
</head>
<body>
<br>  
<br>  
<form action="register.jsp">  
<table>
	<thead>Student Registration Form</thead>
	<tr>
		<td><label> Name </label></td>
		<td><input type="text" name="name" size="15"/></td>
	</tr>
	<tr>
		<td><label> Roll No.: </label>  </td>
		<td><input type="text" name="roll" size="15"/></td>
	</tr>
	<tr>
		<td><label>Email :  </label></td>
		<td><input type="email" id="email" name="email"/></td>
	</tr>
	<tr>
		<td><label>Phone :  </label></td>
		<td>
			<input type="text" name="country code"  value="+91" size="2"/>   
			<input type="text" name="phone" size="10"/> <br> <br> 
		</td>
	</tr>
	<tr>
		<td><label> User Id: </label>  </td>
		<td><input type="text" name="id" size="15"/></td>
	</tr>
	<tr>
		<td><label> Password: </label>  </td>
		<td><input type="password" name="pass" size="15"/></td>
	</tr>
	<tr>
		<td colspan=2><input type="submit" value="Register"/> </td>
	</tr>
</table>
</form> 

<%
	String name = request.getParameter("name");
	String roll = request.getParameter("roll");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	if(name!=null){
		PreparedStatement stmt = con.prepareStatement("insert into registers values(?, ?, ?, ?, ?, ?)");
		stmt.setString(1, name);
		stmt.setString(2, roll);
		stmt.setString(3, email);
		stmt.setString(4, phone);
		stmt.setString(5, id);
		stmt.setString(6, pass);
		stmt.execute();
		
		out.print("Registration Successfull");
	}
	con.close();
%> 
</body>
</html>