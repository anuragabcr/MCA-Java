package com.anu.jsp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Product {
	private String id;
	private String name;
	private int price;
	private String type;
	Connection con;
	
	public List<Product> getProducts(){
		ArrayList<Product> products = new ArrayList<>();
		
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from products");
			while(rs.next()) {
				Product c = new Product(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4));
				products.add(c);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return products;
	}
	
	public void updateProduct() {
		try {
			PreparedStatement ps = con.prepareStatement("update products set pname=?, price=?, class=? where pid=?");
			ps.setString(1, name);
			ps.setInt(2, price);
			ps.setString(3, type);
			ps.setString(4, id);
			ps.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public Product(String id, String name, int price, String type) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.type = type;
		
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			this.con = DriverManager.getConnection("jdbc:mysql://localhost:3306/world?characterEncoding=utf8","root","MySQL");
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}

	public Product() {
		super();
		
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			this.con = DriverManager.getConnection("jdbc:mysql://localhost:3306/world?characterEncoding=utf8","root","MySQL");
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
}
