package def;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Main {

	public Connection getCon() throws Exception {

		String url = "jdbc:mysql://localhost:3306/food@home";
        String user = "root";
        String password = "";

        Connection con = DriverManager.getConnection(url, user, password);
       
        return con;
        
	}
	
	public User getUser(int id) throws Exception {
		
		PreparedStatement st = getCon().prepareStatement("SELECT id, firstname, lastname, email, mobile, zip, street, housenumber, creditcardnumber, ccexpirem, ccexpirey, cvv, username, password FROM login WHERE id = ?");
		st.setInt(1, id);
		ResultSet rs = st.executeQuery();
		
		User u = new User();
		
		if(rs.next()) {
			
			u.id = rs.getInt("id");
			u.firstname = rs.getString("firstname");
			u.lastname = rs.getString("lastname");
			u.email = rs.getString("email");
			u.mobile = rs.getString("mobile");
			u.zip = rs.getString("zip");
			u.street = rs.getString("street");
			u.housenumber = rs.getString("housenumber");
			u.creditcardnumber = rs.getString("creditcardnumber");
			u.ccexpirem = rs.getString("ccexpirem");
			u.ccexpirey = rs.getString("ccexpirey");
			u.cvv = rs.getString("cvv");
			u.username = rs.getString("username");
			u.password = rs.getString("password");
			
		}
		
		return u;
		
	}
	
	public void addUser(User u) throws Exception {
		
		PreparedStatement st = getCon().prepareStatement("INSERT INTO login (\"firstname\", \"lastname\", \"email\", \"mobile\", \"zip\", \"street\", \"housenumber\", \"creditcardnumber\", \"ccexpirem\", \"ccexpirey\", \"cvv\", \"username\",  \"password\") VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		
		st.setString(1, u.firstname);
		st.setString(2, u.lastname);
		st.setString(3, u.email);
		st.setString(4, u.mobile);
		st.setString(5, u.zip);
		st.setString(6, u.street);
		st.setString(7, u.housenumber);
		st.setString(8, u.creditcardnumber);
		st.setString(9, u.ccexpirem);
		st.setString(10, u.ccexpirey);
		st.setString(11, u.cvv);
		st.setString(12, u.username);
		st.setString(13, u.password);
		st.execute();
		
	}
	
	public void updateUser(int id, User u) throws Exception {
		
		PreparedStatement st = getCon().prepareStatement("UPDATE login SET firstname = ?, lastname = ?, email = ?, mobile = ?, zip = ?, street = ?, housenumber = ?, creditcardnumber = ?, ccexpirem = ?, ccexpirey = ?, cvv = ?, username = ?, password = ? WHERE id = ?;");
		
		st.setString(1, u.firstname);
		st.setString(2, u.lastname);
		st.setString(3, u.email);
		st.setString(4, u.mobile);
		st.setString(5, u.zip);
		st.setString(6, u.street);
		st.setString(7, u.housenumber);
		st.setString(8, u.creditcardnumber);
		st.setString(9, u.ccexpirem);
		st.setString(10, u.ccexpirey);
		st.setString(11, u.cvv);
		st.setString(12, u.username);
		st.setString(13, u.password);
		st.setInt(14, id);
		st.execute();
		
	}
	
	public void deleteUser(int id) throws Exception {
		
		PreparedStatement st = getCon().prepareStatement("DELETE FROM login WHERE id = ?");
		
		st.setInt(1, id);
		st.execute();
		
	}
	
	public boolean validateLogin(String username, String password) throws Exception {
		
		int id = 0;
		
		PreparedStatement st = getCon().prepareStatement("SELECT id, firstname, lastname, email, mobile, zip, street, housenumber, creditcardnumber, ccexpirem, ccexpirey, cvv, password FROM login WHERE username=? and password=?");
		st.setString(1, username);
		st.setString(2, password);
		ResultSet rs = st.executeQuery();
		
		boolean result;
		
		if(rs.next()) {
			
			id = rs.getInt("id");
		
			User u = new User();
		
			u = getUser(id);
			
			result = true;
			
		} else {
			
			result = false;
			
		}
		
		return result;
	}
	
	public User getByName(String username) throws Exception {
		
		PreparedStatement st = getCon().prepareStatement("SELECT id, firstname, lastname, email, mobile, zip, street, housenumber, creditcardnumber, ccexpirem, ccexpirey, cvv, username, password FROM login WHERE username = ?");
		st.setString(1, username);
		ResultSet rs = st.executeQuery();
		
		User u = new User();
		
		if(rs.next()) {
			
			u.id = rs.getInt("id");
			u.firstname = rs.getString("firstname");
			u.lastname = rs.getString("lastname");
			u.email = rs.getString("email");
			u.mobile = rs.getString("mobile");
			u.zip = rs.getString("zip");
			u.street = rs.getString("street");
			u.housenumber = rs.getString("housenumber");
			u.creditcardnumber = rs.getString("creditcardnumber");
			u.ccexpirem = rs.getString("ccexpirem");
			u.ccexpirey = rs.getString("ccexpirey");
			u.cvv = rs.getString("cvv");
			u.username = rs.getString("username");
			u.password = rs.getString("password");
			
		}
		
		return u;
		
	}
	
	
}
