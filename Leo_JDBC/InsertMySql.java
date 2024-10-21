package Leo_JDBC;

import java.sql.*;
import java.util.Scanner;

public class InsertMySql {

	public static void main(String[] args) {
		try {
		    Scanner myScanner = new Scanner(System.in);  // Create a Scanner object

			String host = "jdbc:mysql://lchartier01.webhosting1.eeecs.qub.ac.uk:";
			String port = "3306/";
			String DB = " lchartier01";
			String username = "lchartier01";
			String password = "xDtfpQq2YkXbPQW0";
			String urlDB = host + port + DB;
		
			//connection details are above this snippet
			Connection con = DriverManager.getConnection(urlDB, username, password);
			Statement stmt = con.createStatement();

			// result is stored in a result set names rs.
			ResultSet rs = stmt.executeQuery("SELECT * FROM L_Company");
			while (rs.next())
				System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3));

		    System.out.println("Enter name of company:");
		    String name = myScanner.nextLine();  // Read user input
		    System.out.println("Enter phone number of company:");
		    String phoneNo = myScanner.nextLine();  // Read user input
			
			String MysqlInsert = "INSERT IGNORE INTO L_Company (Name, PhoneNo) VALUES ('" + name+ "', '" + phoneNo + "')";
			stmt.executeUpdate(MysqlInsert);
			System.out.println("\n Records added successfully! \n");
			
			rs = stmt.executeQuery("SELECT * FROM L_Company");
			while (rs.next())
				System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3));

			stmt.close(); // connection object is closed.
			con.close();
			myScanner.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
