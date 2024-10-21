package Leo_JDBC;

import java.sql.*;

public class ViewMySql {

	public static void main(String[] args) {
		try {
			String host = "jdbc:mysql://lchartier01.webhosting1.eeecs.qub.ac.uk:";
			String port = "3306/";
			String DB = " lchartier01";
			String username = "lchartier01";
			String password = "xDtfpQq2YkXbPQW0";
			String urlDB = host + port + DB;
			Connection con = DriverManager.getConnection(urlDB, username, password);
			Statement stmt = con.createStatement();

			// result is stored in a result set names rs.
			ResultSet rs = stmt.executeQuery("SELECT * FROM Application_Janurary_Filter");
			while (rs.next())
				System.out.println(rs.getInt(1) + " " + rs.getInt(2) + " " + rs.getInt(3) + " " + rs.getInt(4) + " " + rs.getInt(5) + " " + rs.getString(6) + " £" + rs.getString(7));
			stmt.close(); // connection object is closed.
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
