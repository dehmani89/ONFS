package come.fireboxtraining.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;


@Path("/hello")
public class Hello {
	
	
	//Called if Plain text is a request
	/*@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String sayPlainTextHello()
	{
		return "hello, world";
	}*/

	//Called if XML is a request
	
	@GET
	@Produces(MediaType.TEXT_XML)
	public String sayXMLHello()
	{
		String myStr = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" + "<parent>" +  "<hello>" + " Hello, World" + "</hello>" +  "<hello>" + " Hello, World" + "</hello>" + "</parent>";
		return myStr;
	}

	//Called if HTML is a request
	/*
	@GET
	@Produces(MediaType.TEXT_HTML)
	public String sayHTMLHello()
	{
		System.out.println("Printing HTML");
		return 	"<!DOCTYPE html>" +
				"<html> <head> <title>HELLO WORLD</title> </head>" +
				"<body>" +
				"<h1>Hello World</h1>" +
				"</body>" +
				"</html>";
	}*/
	
}
