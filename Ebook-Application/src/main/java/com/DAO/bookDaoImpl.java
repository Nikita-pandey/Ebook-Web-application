package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.book_details;

public class bookDaoImpl implements bookDAO {
	
	private Connection con;
	
	public bookDaoImpl(Connection con) {
		super();
		this.con = con;
	}
	
	@Override
	public boolean addbooks(book_details bd) {
		
		boolean b = false;
		
		try {
			String q = "insert into book_details(book_name,author,price,book_category,status,photo,email) values(?,?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(q);
			pst.setString(1,bd.getBook_name() );
			pst.setString(2, bd.getAuthor());
			pst.setDouble(3, bd.getPrice());
			pst.setString(4, bd.getBookcategory());
			pst.setString(5, bd.getStatus());
			pst.setString(6, bd.getPhotoName());
			pst.setString(7, bd.getEmail());
			
			int num  = pst.executeUpdate();
			if(num==1)
				b=true;	
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return false;
	}

	

}
