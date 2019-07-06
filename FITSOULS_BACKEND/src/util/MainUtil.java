package util;

import java.sql.Connection;
import java.sql.DriverManager;


public class MainUtil {
	public static Connection CreateCon() {
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fitsouls_backend", "root", "root");
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		return con;
	}

}
