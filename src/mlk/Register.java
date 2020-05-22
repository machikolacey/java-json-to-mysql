package mlk;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class Register {

	
	 private String dburl="jdbc:mysql://localhost:3306/interview";
	 private String dbuname = "root";
	 private String dbpassword = "";
	 private String dbdriver = "com.mysql.jdbc.Driver";
	 
	 public Connection getConnection() {
		 
		 Connection con = null;
		 
		 
		 try {
			DriverManager.getConnection(dburl, dbuname, dbpassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
		 
		return con;
		 
	 }
	 
	public String insert() {
		
		
	}
	
	
}

