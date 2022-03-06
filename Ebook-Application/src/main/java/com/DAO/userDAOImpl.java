package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.entity.User;

public class userDAOImpl implements userDAO{
	
	private Connection con;
	
	public userDAOImpl(Connection con)
	{
		this.con = con;
	}
	
	
	public boolean register(User us)
	{
		boolean s=false;
		try {
			String str = "insert into user(name,email,password,phoneno) values(?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(str);
			pst.setString(1, us.getName());
			pst.setString(2, us.getEmail());
			pst.setString(3, us.getPassword());
			pst.setString(4,us.getPhoneno());
			
			int res= pst.executeUpdate();
			if(res>=1)
				s=true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return s;
		
	}
	
	public User login(String email, String password) {
		
		User us=null;
		
		String s = "select * from user where email=? and password=?";
		PreparedStatement pst;
		try {
			pst = con.prepareStatement(s);
			pst.setString(1,email);
			pst.setString(2, password);
			
			ResultSet res = pst.executeQuery();
			while(res.next())
			{
				us = new User();
				us.setId(res.getInt(1));
				us.setName(res.getString(2));
				us.setEmail(res.getString(3));
				us.setPassword(res.getString(4));
				us.setAddress(res.getString(5));
				us.setLandmark(res.getString(6));
				us.setCity(res.getString(7));
				us.setState(res.getString(8));
				us.setPincode(res.getString(9));
			}
				
			
		} 
		catch (SQLException e1) {
			
			e1.printStackTrace();
		}
		
		return us;
		
	}
	
	
	

}
