package com.crud;

//STEP 1. Import required packages
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Statement;

public class Delete {

	static Connection conn 		= null;
	static Statement stmt 		= null;
	static Boolean rowDeleted 	= false;
	
	public static Boolean runDelete(String DeleteSQL) throws SQLException,ClassNotFoundException {

		// STEP 2: Register JDBC driver
		Class.forName("com.mysql.jdbc.Driver");

		// STEP 3: Open a connection
		ConnectionHelper connHelper = new ConnectionHelper();
		conn = connHelper.getConnection();

		// STEP 4: Execute a query
		stmt = conn.createStatement();
		
		//keep track if a row has been inserted or not
		int rowCounter = 0;
		
		rowCounter = stmt.executeUpdate(DeleteSQL);
		
		//returns if a row was updated or not
		if (rowCounter > 0) {
			rowDeleted = true;
		} else {
			rowDeleted = false;
		}		
		return rowDeleted;
	}
	
	
	
	
	
	
}
