package com.best.library;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Category {
	public Category(String category_name) {
		super();
		this.category_name = category_name;
	}

	String category_name;

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	
	public static List<Category> getAllCategories() {
		List<Category> cats = new ArrayList<>();
		
		try {
			Connection con = DB.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from Library-Book");
			
			while (rs.next()) {
				Category cat = new  Category(rs.getString(2));
				System.out.println("loop!");

//				cats.add(cat);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return cats;
	}
}
