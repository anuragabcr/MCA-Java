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
<title>Login Page</title>
</head>
<body>
<br>  
<br>  
<form action="login.jsp">  
<table>
	<thead>Student Login Form</thead>
	<tr>
		<td><label> User Id: </label>  </td>
		<td><input type="text" name="id" size="15"/></td>
	</tr>
	<tr>
		<td><label> Password: </label>  </td>
		<td><input type="password" name="pass" size="15"/></td>
	</tr>
	<tr>
		<td colspan=2><input type="submit" value="Login"/> </td>
	</tr>
</table>
</form> 



<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	if(pass!=null){
		PreparedStatement stmt = con.prepareStatement("select * from registers where ID=? and pass=?");
		stmt.setString(1, id);
		stmt.setString(2, pass);
		ResultSet rs = stmt.executeQuery();
		if(rs.next()){
			out.print(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"  "+rs.getString(4)+"  "+rs.getString(5)+"  "+rs.getString(6));
			session.setAttribute("user", rs.getString(3));
			response.sendRedirect("dashboard.jsp");
		}
		else{
			out.print("Wrong Id or Password");
		}
	}
	con.close();
%> 
</body>
</html>