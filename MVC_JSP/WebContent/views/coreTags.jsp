<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<link href="font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/sb-admin-2.css" rel="stylesheet">
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/sb-admin-2.js" type="text/javascript"></script>
<script src="js/coreTags.js" type="text/javascript"></script>
</head>

<div id="content">

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Core Tags</h1>
			<p class="lead">The core group of tags are the most frequently
				used JSTL tags. Following is the syntax to include JSTL Core library
				in your JSP:</p>
			<pre>&lt;%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %&gt;</pre>
		</div>

		<div class="col-lg-4 col-lg-8 col-lg-12">
			<table class="table table-striped">
				<caption>JSTL Core Tags</caption>
				<thead>
					<tr>
						<th>Tag</th>
						<th>Description</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_cout"><c:out
									value="${'<c:out>'}" /></a></td>
						<td><c:out value="${'&lt;%= ... &gt;, but for expressions.'}" /></td>
					</tr>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_set"><c:out
									value="${'<c:set>'}" /></a></td>
						<td><c:out
								value="${'Sets the result of an expression evaluation in a \\'scope\\''}" /></td>
					</tr>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_remove"><c:out
									value="${'<c:remove>'}" /></a></td>
						<td><c:out
								value="${'Removes a scoped variable (from a particular scope, if specified).'}" /></td>
					</tr>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_catch"><c:out
									value="${'<c:catch>'}" /></a></td>
						<td><c:out
								value="${'Catches any Throwable that occurs in its body and optionally exposes it.'}" /></td>
					</tr>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_if"><c:out
									value="${'<c:if>'}" /></a></td>
						<td><c:out
								value="${'Simple conditional tag which evalutes its body if the supplied condition is true.'}" /></td>
					</tr>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_choose"><c:out
									value="${'<c:choose>'}" /></a></td>
						<td><c:out
								value="${'Simple conditional tag that establishes a context for mutually exclusive conditional operations, marked by <when> and <otherwise>.'}" /></td>
					</tr>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_when"><c:out
									value="${'<c:when>'}" /></a></td>
						<td><c:out
								value="${'Subtag of <choose> that includes its body if its condition evalutes to \\'true\\'.'}" /></td>
					</tr>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_otherwise"><c:out
									value="${'<c:otherwise>'}" /></a></td>
						<td><c:out
								value="${'Subtag of <choose> that follows <when> tags and runs only if all of the prior conditions evaluated to \\'false\\''}" /></td>
					</tr>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_import"><c:out
									value="${'<c:import>'}" /></a></td>
						<td><c:out
								value="${'Retrieves an absolute or relative URL and exposes its contents to either the page, a String in \\'var\\', or a Reader in \\'varReader\\'.'}" /></td>
					</tr>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_forEach"><c:out
									value="${'<c:forEach>'}" /></a></td>
						<td><c:out
								value="${'The basic iteration tag, accepting many different collection types and supporting subsetting and other functionality.'}" /></td>
					</tr>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_forTokens"><c:out
									value="${'<c:forTokens>'}" /></a></td>
						<td><c:out
								value="${'Iterates over tokens, separated by the supplied delimeters.'}" /></td>
					</tr>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_param"><c:out
									value="${'<c:param>'}" /></a></td>
						<td><c:out
								value="${'Adds a parameter to a containing \\'import\\' tag\\'s URL.'}" /></td>
					</tr>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_redirect"><c:out
									value="${'<c:redirect>'}" /></a></td>
						<td><c:out value="${'Redirects to a new URL.'}" /></td>
					</tr>
					<tr>
						<td><a href="#" data-toggle="modal" data-target="#_url"><c:out
									value="${'<c:url>'}" /></a></td>
						<td><c:out
								value="${'Creates a URL with optional query parameters'}" /></td>
					</tr>
				</tbody>
			</table>
		</div>

	</div>
	<!-- End Row -->

	<%-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|																					<C:OUT/>
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------%>
	<!-- Modal -->
	<div class="modal fade" id="_cout" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">&lt;c:out/&gt; Tag</h4>
				</div>
				<div class="modal-body" id="modalBodyContent">
					<div class="row">
						<div class="col-md-12">
							<h2>Example:</h2>
							<pre class="prettyprint">
&lt;%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;&lt;c:out&gt; Tag Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;c:out value="${'&lt;tag&gt; , &amp;'}"/&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
							<p>This would produce following result:</p>
							<pre class="prettyprint">
&lt;tag&gt; , &amp;
</pre>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<%-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|																					<C:SET/>
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------%>
	<!-- Modal -->
	<div class="modal fade" id="_set" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">&lt;c:set/&gt; Tag</h4>
				</div>
				<div class="modal-body" id="modalBodyContent">
					<div class="row">
						<div class="col-md-12">
							<h2>Example:</h2>
							<pre class="prettyprint">
&lt;%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;&lt;c:set&gt; Tag Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;c:set var="salary" scope="session" value="${'2000 * 2'}"/&gt;
&lt;c:out value="${salary}"/&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
							<p>This would produce following result:</p>
							<pre class="prettyprint">
4000
</pre>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


	<%-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|																					<C:REMOVE/>
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------%>
	<!-- Modal -->
	<div class="modal fade" id="_remove" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">&lt;c:out/&gt; Tag</h4>
				</div>
				<div class="modal-body" id="modalBodyContent">
					<div class="row">
						<div class="col-md-12">
							<h2>Example:</h2>
							<pre>
&lt;%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;&lt;c:remove&gt; Tag Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;c:set var="salary" scope="session" value="${2000*2}"/&gt;
&lt;p&gt;Before Remove Value: &lt;c:out value="${salary}"/&gt;&lt;/p&gt;
&lt;c:remove var="salary"/&gt;
&lt;p&gt;After Remove Value: &lt;c:out value="${salary}"/&gt;&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
							<p>This would produce following result:</p>
							<pre class="prettyprint">
Before Remove Value: 4000
After Remove Value: 
</pre>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<%-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|																					<C:CATCH/>
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------%>
	<!-- Modal -->
	<div class="modal fade" id="_catch" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">&lt;c:out/&gt; Tag</h4>
				</div>
				<div class="modal-body" id="modalBodyContent">
					<div class="row">
						<div class="col-md-12">
							<h2>Example:</h2>
							<pre>
&lt;%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;&lt;c:catch&gt; Tag Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;c:catch var ="catchException"&gt;
   &lt;% int x = 5/0;%&gt;
&lt;/c:catch&gt;

&lt;c:if test = "${catchException != null}"&gt;
   &lt;p&gt;The exception is : ${catchException} &lt;br /&gt;
   There is an exception: ${catchException.message}&lt;/p&gt;
&lt;/c:if&gt;

&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This would produce following result:</p>
<pre>
The exception is : java.lang.ArithmaticException: / by zero
There is an exception: / by zero
</pre>

						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>




</div>
<%-- End content --%>
</html>