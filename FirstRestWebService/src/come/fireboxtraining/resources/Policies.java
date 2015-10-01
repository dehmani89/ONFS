package come.fireboxtraining.resources;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;



@Path("/policies")
public class Policies {	
		
    //define a list
	List<String> policyList = new ArrayList<String>();
	
	@GET
	@Produces(MediaType.TEXT_XML)
	public String getXMLList()
	{	
		//get the list and save it in a new list for processing
		//List<String> _policyList = getPolicies();
		
		//variable to hold the xml string of policies
		//String myStr = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" + "<policies>" + "</policy>" + "111111" + "</policy>" + "<policy>" + "222222" + "</policy>" + "</policies>";
		String myStr = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" + "<parent>" +  "<policy>" + " Hello, World" + "</policy>" +  "<hello>" + " Hello, World" + "</hello>" + "</parent>";
		// iterate via "New way to loop"
		/*System.out.println("Looping through the list to build the xml string");
		for (String policy : _policyList) 
		{
			myStr += "<Policy>" + policy + "</Policy>";
		}*/

		return myStr;
	}	

}
