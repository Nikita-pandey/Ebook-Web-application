package com.user.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDAOImpl;
import com.DB.DBConnectivity;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			
			userDAOImpl ob = new userDAOImpl(DBConnectivity.getConn());
			
			HttpSession session  = req.getSession();
			
			String email = req.getParameter("email");
			String  password = req.getParameter("password");
			
			if(email.equals("admin@gmail.com") && password.equals(password))
			{
				User userob= new User();
				session.setAttribute("uobj", userob);
				resp.sendRedirect("./admin/home.jsp");
			}
			else
			{
				//code will fetch data from db to check the logged-in user details
				User us= ob.login(email, password);
				if(us!=null)
				{
					session.setAttribute("userobj", us);
					resp.sendRedirect("home.jsp");
				}
				else {
					session.setAttribute("failedmsg", "Incorrect credentials");
					resp.sendRedirect("login.jsp");
				}
				
				
			}
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}
	
	

}
