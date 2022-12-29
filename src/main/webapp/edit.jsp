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
<%
Product p = new Product(request.getParameter("pid"),request.getParameter("pname"),Integer.parseInt(request.getParameter("pprice")),request.getParameter("ptype"));
p.updateProduct();
out.print("Record updated Successfully");
%>
<form action="products.jsp">
<input type="submit" value="Go To Products page" />
</form>
</body>
</html>