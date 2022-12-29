package com.anu.jsp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Employee {
	private String name;
	private String dept;
	private String email;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Employee() {
		super();
	}
	public Employee(String name, String dept, String email) {
		super();
		this.name = name;
		this.dept = dept;
		this.email = email;
	}
	public List<Employee> getEmployee(){
		ArrayList<Employee> employee = new ArrayList<>();
		
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/world?characterEncoding=utf8","root","MySQL");
			
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from employees");
			while(rs.next()) {
				Employee c = new Employee(rs.getString(1), rs.getString(2), rs.getString(3)); 
				employee.add(c);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return employee;
	}
}
