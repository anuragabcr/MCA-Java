<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.anu.jsp.Employee" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td>Name</td>
		<td>Dept</td>
		<td>Email</td>
	</tr>
<%
	Employee e = new Employee();
	List<Employee> emp_list = e.getEmployee();
	for(Employee emp: emp_list){
%>

	<tr>
	<td><%= emp.getName() %></td>
	<td><%= emp.getDept() %></td>
	<td><%= emp.getEmail() %></td>
	</tr>
<% }%>
</table>
</body>
</html>