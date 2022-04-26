package Recette.RecetteWeb;

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

/**
 * Servlet implementation class RecetteServlet
 */
@WebServlet("/a")
public class RecetteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RecetteDao recetteDao;
	

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init() throws ServletException {
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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		
		try {
			switch (action) {
			case "/newR":
				showNewForm(request, response);
				break;
			case "/insertR":
				insertRecette(request, response);
				break;
			case "/deleteR":
				deleteRecette(request, response);
				break;
			case "/editR":
				showEditForm(request, response);
				break;
			case "/updateR":
				updateRecette(request, response);
				break;
			default:
				listRecette(request, response);
				break;
			}
		  
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("recette-form.jsp");
		dispatcher.forward(request, response);
	}

	private void insertRecette(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String nom = request.getParameter("titre");
		String prenom = request.getParameter("ingredient");
		String email = request.getParameter("etape1");
		String mdp = request.getParameter("etape2");			
		String role = request.getParameter("etape3");			
		Recette newRecette = new Recette(nom, prenom, email,mdp,role);
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
	
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
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
