package admin.adminWeb;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Recette.RecetteDao.RecetteDao;
import Recette.RecetteModel.Recette;
import User.model.*;
import admin.adminDao.UserDao;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDAO;
	private RecetteDao recetteDao;


	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init() throws ServletException {
		userDAO = new UserDao();
		recetteDao = new RecetteDao();

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertUser(request, response);
				break;
			case "/delete":
				deleteUser(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateUser(request, response);
				break;
				
	//--------------------------------------------------------------------------------------
			case "/newR":
				showNewFormR(request, response);
				break;
			case "/insertR":
				insertRecette(request, response);
				break;
			case "/deleteR":
				deleteRecette(request, response);
				break;
			case "/editR":
				showEditFormR(request, response);
				break;
			case "/updateR":
				updateRecette(request, response);
				break;	
			case "/listR":
				listRecette(request, response);
				break;
				
				
			default:
				listUser(request, response);
				break;
			}
		  
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

		private void showNewFormR(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
			dispatcher.forward(request, response);
		}
		
		//insert User 
		private void insertUser(HttpServletRequest request, HttpServletResponse response) 
				throws SQLException, IOException {
			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String email = request.getParameter("email");
			String mdp = request.getParameter("mdp");			
			String role = request.getParameter("role");			
			User newUser = new User(nom, prenom, email,mdp,role);
			userDAO.insertUser(newUser);
			response.sendRedirect("list");
		}
		//delete User
		
		private void deleteUser(HttpServletRequest request, HttpServletResponse response) 
				throws SQLException, IOException {
			int id = Integer.parseInt(request.getParameter("id"));
			userDAO.deleteUser(id);
			response.sendRedirect("list");

		}
		//Edit User
		
		private void showEditForm(HttpServletRequest request, HttpServletResponse response)
				throws SQLException, ServletException, IOException {
			int id = Integer.parseInt(request.getParameter("id"));
			User existingUser = userDAO.selectUser(id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
			request.setAttribute("user", existingUser);
			dispatcher.forward(request, response);

		}
		//Update user 
		
		private void updateUser(HttpServletRequest request, HttpServletResponse response) 
				throws SQLException, IOException {
			int id = Integer.parseInt(request.getParameter("id"));
			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String email = request.getParameter("email");
			String mdp = request.getParameter("mdp");
			String role = request.getParameter("role");
			User book = new User(id, nom, prenom, email,mdp,role);
			userDAO.updateUser(book);
			response.sendRedirect("list");
		}
		
		//List 
		private void listUser(HttpServletRequest request, HttpServletResponse response)
				throws SQLException, IOException, ServletException {
			List<User> listUser = userDAO.selectAllUsers();
			request.setAttribute("listUser", listUser);
			RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
			dispatcher.forward(request, response);
		}
		
	//--------------------------------------------------------------------------------
		
		

		private void showNewForm(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			RequestDispatcher dispatcher = request.getRequestDispatcher("recette-form.jsp");
			dispatcher.forward(request, response);
		}

		private void insertRecette(HttpServletRequest request, HttpServletResponse response) 
				throws SQLException, IOException {
			String titre = request.getParameter("titre");
			String ingredient = request.getParameter("ingredient");
			String etape1 = request.getParameter("etape1");
			String etape2 = request.getParameter("etape2");			
			String etape3 = request.getParameter("etape3");			
			Recette newRecette = new Recette(titre, ingredient, etape1,etape2,etape3);
			recetteDao.insertRecette(newRecette);
			response.sendRedirect("listR");
		}
		
		//delete Recette
		
		private void deleteRecette(HttpServletRequest request, HttpServletResponse response) 
				throws SQLException, IOException {
			int id = Integer.parseInt(request.getParameter("id"));
			try {
			recetteDao.deleteRecette(id);}
			catch(Exception e){
				e.printStackTrace();
			}
			response.sendRedirect("listR");
		}
		
		//Edit User
		
		private void showEditFormR(HttpServletRequest request, HttpServletResponse response)
				throws SQLException, ServletException, IOException {
			int id = Integer.parseInt(request.getParameter("id"));
			Recette existingRecette = recetteDao.selectRecette(id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("recette-form.jsp");
			request.setAttribute("recette", existingRecette);
			dispatcher.forward(request, response);

		}
		
		//Update user 
		
		private void updateRecette(HttpServletRequest request, HttpServletResponse response) 
				throws SQLException, IOException {
			int id = Integer.parseInt(request.getParameter("id"));
			String titre = request.getParameter("titre");
			String ingredient = request.getParameter("ingredient");
			String etape1 = request.getParameter("email");
			String etape2 = request.getParameter("etape2");
			String etape3 = request.getParameter("etape3");
			Recette book = new Recette(id, titre, ingredient, etape1,etape2,etape3);
			recetteDao.updateRecette(book);
			response.sendRedirect("listR");
		}
		
		//List 
		private void listRecette(HttpServletRequest request, HttpServletResponse response)
				throws SQLException, IOException, ServletException {
			List<Recette> listRecette = recetteDao.selectAllRecette();
			request.setAttribute("listRecette", listRecette);
			RequestDispatcher dispatcher = request.getRequestDispatcher("recette-list.jsp");
			dispatcher.forward(request, response);
		}
		
	}
