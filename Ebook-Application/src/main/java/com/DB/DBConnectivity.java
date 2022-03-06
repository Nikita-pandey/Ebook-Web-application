package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnectivity
{
	
	private static Connection con;
	
	public static Connection getConn()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			//creats connection with the db
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook_app","root","root");
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return con;
	}
	
	
}
