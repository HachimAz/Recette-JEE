package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import User.UserDao.UserDao;
import User.connection.DBCon;
import User.model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/user-Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.sendRedirect("Login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out = response.getWriter()) {
			String email = request.getParameter("email");
			String Password = request.getParameter("password");
			
			try {
				
				UserDao uDao = new UserDao(DBCon.getConnection());
				User user = uDao.userLogin(email, Password);
				
				if(user != null)
				{

					request.getSession().setAttribute("auth", user);
				    
					request.getSession().setAttribute("nom", user.getNom());
				    request.getSession().setAttribute("role", user.getRole());
 
				   
					response.sendRedirect("index.jsp");
					
//					if(user.getRole() == "Admin")
//					out.print("Admin");
//					else
//						response.sendRedirect("index.jsp");
//						//						out.print("Client");						
				}else {
				out.print("EREUR");
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}

		}
		
		
	}

}
