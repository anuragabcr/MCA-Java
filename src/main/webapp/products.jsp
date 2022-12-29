<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.anu.jsp.Product" %>
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
		<td>ID</td>
		<td>Name</td>
		<td>Price</td>
		<td>Type</td>
		<td></td>
	</tr>
<%
	Product p = new Product();
	List<Product> products = p.getProducts();
	for(Product product: products){
%>
<form action="edit.jsp" method="post">
	<tr>
		<td><input name="pid" value=<%= product.getId() %> /></td>
		<td><input name="pname" value=<%= product.getName() %> /></td>
		<td><input name="pprice" value=<%= product.getPrice() %> /></td>
		<td><input name="ptype" value=<%= product.getType() %> /></td>
		<td><input type="submit" value="Edit" /></td>
	</tr>
</form>
<% }%>
</table>
</body>
</html>