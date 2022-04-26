package User.UserDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import User.model.User;

public class UserDao {

	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public UserDao(Connection con) {
		this.con = con;
	}
	
	public User userLogin(String email, String password) {
		User user = null;
		try {
			
			query = "select * from user where email=? and mdp=? ;";
			pst = this.con.prepareStatement(query);
			pst.setString(1,email);
			pst.setString(2, password);
			rs = pst.executeQuery()
					;
			if(rs.next()) {
				
				user = new User();
				user.setId(rs.getInt("id"));
				user.setNom(rs.getString("nom"));
				user.setPrenom(rs.getString("prenom"));
				user.setEmail(rs.getString("email"));
				user.setMdp(rs.getString("mdp"));
				user.setRole(rs.getString("role"));

			}
			
			
		}catch(Exception e ) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return user;
	}
	
	
	// ------------------------Insertion -----------------------------
	
	public String insert(User member) throws SQLException {
		String sql = "insert into user values(null,?,?,?,?,'Client')";

		pst = this.con.prepareStatement(sql);
		
		String result="Data entered Successfully";
		
		PreparedStatement pst;
		
		try {
		pst = con.prepareStatement(sql);
		pst.setString(1, member.getNom());
		pst.setString(2, member.getPrenom());
		pst.setString(3, member.getEmail());
		pst.setString(4, member.getMdp());
		pst.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
			result = "Data not entered";
		}

		return result;
	}
}
