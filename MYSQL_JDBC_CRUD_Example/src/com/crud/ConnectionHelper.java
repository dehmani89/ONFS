package com.crud;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionHelper {

	protected String db_url = null; // Database URL
	private String user 	= null; // Database User
	private String password = null; // Database Password

	public Connection getConnection() throws SQLException {
		
		//	Set the correct Properties
		SetProperties();
		
		Connection conn = null;

		if (SetProperties()) 
		{
			conn = DriverManager.getConnection(db_url, user, password);
			System.out.println("Connected to database...\n");
		}
		else
		{
			System.out.println("Properties for the SQL Connection are not setup properly");
		}
		return conn;
	}	

	//**************************************************************************************************//
	//						Get Properties for DB Connection											//
	//**************************************************************************************************//
	private Boolean SetProperties()
	{
		Boolean isPropertiesSet = false;
		Properties prop 		= new Properties();
		InputStream input 		= null;
		
		try 
		{
			input = new FileInputStream("config.properties");

			// load a properties file
			prop.load(input);
			
			// get the property value and store it in a variable
			db_url 		= prop.getProperty("sqlDbUrl");
			user		= prop.getProperty("dbuser");
			password	= prop.getProperty("dbpassword");
			
			isPropertiesSet = true;

		} catch (IOException ex) 
		{
			ex.printStackTrace();
			
			isPropertiesSet = false;
		}
		return isPropertiesSet;
	}

}
