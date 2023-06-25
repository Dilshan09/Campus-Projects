package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
 
	//create db connection
	private static String url = "jdbc:mysql://localhost:3306/event";
	private static String userName = "root";
	private static String password = "event";
	private static Connection con;//final return value
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");//To create driver
			
			con = DriverManager.getConnection(url,userName,password);
			
		}catch(Exception e) {//to detect error
			
			System.out.println("Database connection is not success!!");
			
		}
		
		return con;
		
	}
}
