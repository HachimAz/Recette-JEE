package Recette.RecetteDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Recette.RecetteModel.Recette;

public class RecetteDao {

	private String dbUrl = "jdbc:mysql://localhost:3306/test?useSSL=false";
	private String dbUname = "root";
	private String dbPassword = "";
	private String dbDriver = "com.mysql.jdbc.Driver";	
	

	private static final String INSERT_RECETTE_SQL = "INSERT INTO recette" + "  (id,titre, ingredient, etape1, etape2,etape3) VALUES "
			+ " (null,?, ?, ?, ?,?);";

	private static final String SELECT_RECETTE_BY_ID = "select id,titre,ingredient,etape1,etape2,etape3 from recette where id =?";
	private static final String SELECT_ALL_RECETTE = "select id,titre, ingredient, etape1, etape2,etape3 from recette"; 
	private static final String DELETE_RECETTE_SQL = "delete from recette where id = ?;";
	private static final String UPDATE_RECETTE_SQL = "update recette set titre = ?,ingredient= ?, etape1 =?,etape2=?, etape3=? where id = ?;";
	
	public RecetteDao() {
	}
	
	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName(dbDriver);
			connection = DriverManager.getConnection(dbUrl, dbUname, dbPassword);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
		
	}
	
	
	//insert client
		public void insertRecette(Recette recette) throws SQLException {
			System.out.println(INSERT_RECETTE_SQL);
			// try-with-resource statement will auto close the connection.
			try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_RECETTE_SQL)) {
				preparedStatement.setString(1, recette.getTitre());
				preparedStatement.setString(2, recette.getIngredient());
				preparedStatement.setString(3, recette.getEtape1());
				preparedStatement.setString(4, recette.getEtape2());
				preparedStatement.setString(5, recette.getEtape3());
				System.out.println(preparedStatement);
				preparedStatement.executeUpdate();
			} catch (SQLException e) {
				printSQLException(e);
			}
		}
		
		// select Recette by id
		public Recette selectRecette(int id) {
			Recette recette = null;
			try (Connection connection = getConnection();
			   PreparedStatement preparedStatement = connection.prepareStatement(SELECT_RECETTE_BY_ID);) {
				preparedStatement.setInt(1, id);
				System.out.println(preparedStatement);
				ResultSet rs = preparedStatement.executeQuery();

				while (rs.next()) {
					String titre = rs.getString("titre");
					String ingredient = rs.getString("ingredient");
					String etape1 = rs.getString("etape1");
					String etape2 = rs.getString("etape2");
					String etape3 = rs.getString("etape3");
					recette = new Recette(id, titre, ingredient, etape1, etape2,etape3);
				}
			} catch (SQLException e) {
				printSQLException(e);
			}
			return recette;
		}
		
		// select * recette
		
		public List<Recette> selectAllRecette()
		{
			List<Recette> recettes = new ArrayList<>();
			try (Connection connection = getConnection();

				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_RECETTE);) {
				System.out.println(preparedStatement);
				ResultSet rs = preparedStatement.executeQuery();

				while (rs.next()) {
					int id = rs.getInt("id");
					String titre = rs.getString("titre");
					String ingredient = rs.getString("ingredient");
					String etape1 = rs.getString("etape1");
					String etape2 = rs.getString("etape2");
					String etape3 = rs.getString("etape3");
					recettes.add(new Recette(id, titre, ingredient, etape1, etape2,etape3));
				}
			} catch (SQLException e) {
				printSQLException(e);
			}
			return recettes;
		}
		
		// update Recette
		public boolean updateRecette(Recette recette) throws SQLException {
			boolean rowUpdated;
			try (Connection connection = getConnection();
					PreparedStatement statement = connection.prepareStatement(UPDATE_RECETTE_SQL);) {
				System.out.println("updated Recette:"+statement);
				statement.setString(1, recette.getTitre());
				statement.setString(2, recette.getIngredient());			
				statement.setString(3, recette.getEtape1());
				statement.setString(4, recette.getEtape2());
				statement.setString(5, recette.getEtape3());
				statement.setInt(6, recette.getId());

				rowUpdated = statement.executeUpdate() > 0;
			}
			return rowUpdated;
		}
		
		// delete Recette 
		public boolean deleteRecette(int id) throws SQLException {
			boolean rowDeleted;
			try (Connection connection = getConnection();
					PreparedStatement statement = connection.prepareStatement(DELETE_RECETTE_SQL);) {
				statement.setInt(1, id);
				rowDeleted = statement.executeUpdate() > 0;
			}
			return rowDeleted;
		}
		
		
		private void printSQLException(SQLException ex) {
			for (Throwable e : ex) {
				if (e instanceof SQLException) {
					e.printStackTrace(System.err);
					System.err.println("SQLState: " + ((SQLException) e).getSQLState());
					System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
					System.err.println("Message: " + e.getMessage());
					Throwable t = ex.getCause();
					while (t != null) {
						System.out.println("Cause: " + t);
						t = t.getCause();
					}
				}
			}
		}
	
	
}
