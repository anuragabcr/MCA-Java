<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.anu.jsp.Product" %>
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
	</tr>
<% 
List<Product> products = (List<Product>) request.getAttribute("products");
for(Product product: products){ 
%>
	<tr>
		<td><%= product.getId() %></td>
		<td><%= product.getName() %></td>
		<td><%= product.getPrice() %></td>
		<td><%= product.getType() %></td>
	</tr>
<% }%>
</table>
</body>
</html>