package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.bookDaoImpl;
import com.DB.DBConnectivity;
import com.entity.book_details;

@WebServlet("/book_add")
public class addBookServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bookname = req.getParameter("bookname");
		String authorname = req.getParameter("authorname");
		String bookcategories = req.getParameter("bcat");
		String bookstatus = req.getParameter("bstatus");
		double price = Double.parseDouble(req.getParameter("price"));
		//will get file
		Part part = req.getPart("bimg");
		//and to get filename from file
		String filename= part.getSubmittedFileName();
		
		book_details bd = new book_details(bookname,authorname,price,bookcategories,bookstatus,filename,"admin@gmail.com");
		bookDaoImpl dao  = new bookDaoImpl(DBConnectivity.getConn());
		
		HttpSession session = req.getSession();
	
		
		
		if(dao.addbooks(bd))
		{
			session.setAttribute("succmsg", "Book add successfully");
			resp.sendRedirect("admin/add_books.jsp");
		}
		else {
			session.setAttribute("failmsg", "Something went wrong");
			resp.sendRedirect("admin/add_books.jsp");
		}
		
	}

}
