<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Timeline CSS -->
<link href="css/plugins/timeline.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="css/plugins/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">LOGO GOES HERE</a>
			</div>
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li>
							<a class="active" href="index.jsp"> <i class="fa fa-home fa-fw"></i> Welcome</a>
						</li>
						<li>
                            <a href="#" class="navLink" id="coreTags"><i class="fa fa-file-text-o fa-fw"></i> Core Tags</a>
                        </li>
                        <li>
                            <a href="#" class="navLink" id="formattingTags"><i class="fa fa-file-text-o fa-fw"></i>  Formatting Tags</a>
                        </li>
                        <li>
                            <a href="#" class="navLink" id="sqlTags"><i class="fa fa-file-text-o fa-fw"></i> SQL tags</a>
                        </li>
                         <li>
                            <a href="#" class="navLink" id="xmlTags"><i class="fa fa-file-text-o fa-fw"></i> XML tags</a>
                        </li>
                         <li>
                            <a href="#" class="navLink" id="jstlFunctions"><i class="fa fa-file-text-o fa-fw"></i> JSTL Functions</a>
                        </li>
					</ul>
			</div>
				<!-- /.sidebar-collapse -->
				
			</div>
			<!-- /.navbar-static-side -->

		</nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">JSP - Standard Tag Library (JSTL) Tutorial</h1>
					<p class="lead">The JavaServer Pages Standard Tag Library (JSTL) is a collection of useful JSP tags which encapsulates core functionality common to many JSP applications.<br/>
JSTL has support for common, structural tasks such as iteration and conditionals, tags for manipulating XML documents, internationalization tags, and SQL tags. It also provides a framework for integrating existing custom tags with JSTL tags.<br/>
The JSTL tags can be classified, according to their functions, into following JSTL tag library groups that can be used when creating a JSP page: </p>
					
					<ul>
					<li> Core Tags</li>
					<li> Formatting Tags</li>
					<li> SQL tags</li>
					<li> XML tags</li>
					<li> JSTL Functions</li>
			  		</ul>
			  		
			  		
			  		<p class="lead">To use any of the libraries, you must include a <<strong>taglib</strong>> directive at the top of each JSP that uses the library.</p>
			  		
			  		
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row"></div>

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="js/plugins/metisMenu/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="js/plugins/morris/raphael.min.js"></script>
	<script src="js/plugins/morris/morris.min.js"></script>
	<script src="js/plugins/morris/morris-data.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="js/sb-admin-2.js"></script>
	
	<!-- Custom Javascript file to control div view -->
	<script src="js/controller.js"></script>
		

</body>
</html>
