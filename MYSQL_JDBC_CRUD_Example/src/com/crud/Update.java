package com.crud;

//STEP 1. Import required packages
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Statement;

public class Update {
	
	static Connection conn 		= null;
	static Statement stmt 		= null;
	static Boolean rowUpdated 	= false;
	
	public static Boolean runUpdate(String UpdateSQL) throws SQLException,ClassNotFoundException {

		// STEP 2: Register JDBC driver
		Class.forName("com.mysql.jdbc.Driver");

		// STEP 3: Open a connection
		ConnectionHelper connHelper = new ConnectionHelper();
		conn = connHelper.getConnection();

		// STEP 4: Execute a query
		stmt = conn.createStatement();
		
		//keep track if a row has been inserted or not
		int rowCounter = 0;
		
		//Catch if the insert is a duplicate entry
		try {
			rowCounter = stmt.executeUpdate(UpdateSQL);
		} catch (SQLException e) {
		    if (e instanceof SQLIntegrityConstraintViolationException) {
		        // Duplicate entry
		    } 	System.out.println("record already exist " + " ~ " + UpdateSQL);
		}
		
		//returns if a row was updated or not
		if (rowCounter > 0) {
			rowUpdated = true;
		} else {
			rowUpdated = false;
		}
		
		return rowUpdated;
	}

}
