package com.mvc.utill;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public Connection con = null;
	
	public Connection getCon(){
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/cedb", "root", "");
		return con;
		
		} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		return null;
		}
	
}
