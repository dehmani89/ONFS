package com.crud;

//STEP 1. Import required packages
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Select {

	static Connection conn = null;
	static Statement stmt = null;

	public static ArrayList<String[]> runSelecte(String selectSQL) throws SQLException, ClassNotFoundException {
		// arraylist of result set
		ArrayList<String[]> myData = new ArrayList<String[]>();

		// STEP 2: Register JDBC driver
		Class.forName("com.mysql.jdbc.Driver");

		// STEP 3: Open a connection
		ConnectionHelper connHelper = new ConnectionHelper();
		conn = connHelper.getConnection();

		// STEP 4: Execute a query
		stmt = conn.createStatement();

		ResultSet rs = stmt.executeQuery(selectSQL);

		// STEP 5: Extract data from result set
		while (rs.next()) {
			// Retrieve by column name
			String id = rs.getString("id");
			String username = rs.getString("username");
			String password = rs.getString("password");

			// construct an array for each row
			String[] rowData = { id, username, password };

			// Add each record as an arry into the array list
			myData.add(rowData);
		}

		// STEP 6: Clean-up environment
		rs.close();
		stmt.close();
		conn.close();

		return myData;
	}

	/**
	 * @param selectQuery
	 *            the selectQuery to set
	 */
	public void setSelectQuery(String selectQuery) {
	}

}
