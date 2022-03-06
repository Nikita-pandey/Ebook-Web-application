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

@WebServlet("/Register")
public class RServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public RServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		
		 
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			
			String name = request.getParameter("fullname");
			String email =request.getParameter("email");
			String phoneno = request.getParameter("phoneno");
			String password=  request.getParameter("password");
			String check = request.getParameter("terms");
			System.out.println("check : "+check);
			
			
			HttpSession session = request.getSession();
			
			//System.out.println(name+" "+email+" "+n+" "+address);
			//if checkbox selected output would be on otherwise null
			if(check!=null)
			{
				User us= new User();
				us.setName(name);
				us.setEmail(email);
				us.setPhoneno(phoneno);
				us.setAddress(password);
				
				userDAOImpl ob = new userDAOImpl(DBConnectivity.getConn());
				if(ob.register(us))
				{//System.out.println("User Registration successful");
					session.setAttribute("succmsg",  "Registration successful");
					response.sendRedirect("register.jsp");
				}
				else
				{//System.out.println("User Registration successful");
					session.setAttribute("failmsg",  "Soemthing went wrong");
					response.sendRedirect("register.jsp");
				}
			}
			else
			{
				//System.out.println("Please accept terms and conditions");
				session.setAttribute("failmsg",  "Please accept terms and conditions");
				response.sendRedirect("register.jsp");
			}
			
		}

	}



