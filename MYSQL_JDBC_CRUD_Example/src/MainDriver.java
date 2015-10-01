import java.sql.SQLException;
import java.util.ArrayList;

import com.crud.Delete;
import com.crud.Insert;
import com.crud.Select;
import com.crud.Update;

public class MainDriver {
	
	// CRUD operations
	static String selectSQL = "SELECT id, username, password FROM users";
	static String insertSQL = "INSERT INTO users (id, username, password) VALUES (0, 'nouaman1', 'dehmani89')";
	static String updateSQL = "UPDATE users SET password = 'pass123' WHERE username = 'amine899'";
	static String deleteSQL = "DELETE FROM users WHERE username = 'david90'";

	public static void main(String[] args) throws SQLException, ClassNotFoundException 
	{
		//Try a select
		selectExample();

		//Try an insert
		insertExample();
		
		//Try an update
		updateExample();

		//Try an update
		deleteExample();
		
		//Try a select
		selectExample();
	}

	//**************************************************************************//
	//							INSERT EXAMPLE									//
	//**************************************************************************//
	private static void insertExample() throws SQLException, ClassNotFoundException 
	{
		boolean rowInserted = Insert.runInsert(insertSQL);
		if(rowInserted){
			System.out.println("Row Inserted into DB table\n");
		}
		else{
			System.out.println("Row was NOT Inserted into DB table\n");
		}
	}

	//**************************************************************************//
	//							UPDATE EXAMPLE									//
	//**************************************************************************//
	private static void updateExample() throws SQLException, ClassNotFoundException 
		{
			boolean rowUpdated = Update.runUpdate(updateSQL);
			if(rowUpdated){
				System.out.println("Row Updated in the DB table\n");
			}
			else{
				System.out.println("Row was NOT Updated in the DB table\n");
			}
		}
		
	//**************************************************************************//
	//							DELETE EXAMPLE									//
	//**************************************************************************//
		private static void deleteExample() throws SQLException, ClassNotFoundException 
			{
				boolean rowDeleted = Delete.runDelete(deleteSQL);
				if(rowDeleted){
					System.out.println("Row Deleted in the DB table\n");
				}
				else{
					System.out.println("Row was NOT Deleted from the DB table\n");
				}
			}
		
	
	//**************************************************************************//
	//							SELECT EXAMPLE									//
	//**************************************************************************//
	private static void selectExample() throws SQLException 
	{
		ArrayList<String[]> mySelectData = null;
		try {
			mySelectData = Select.runSelecte(selectSQL);
		} 
		catch (ClassNotFoundException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//display Data
		System.out.println("ID\t\t" + "User name\t" + "Password");
		System.out.println("-------------------------------------------");
		for (int i = 0; i < mySelectData.size(); i++) 
		{
			for (int j = 0; j < mySelectData.get(i).length; j++)
			{
				System.out.print(mySelectData.get(i)[j] + "\t\t");	
			}
			System.out.println();
		}
	}
}