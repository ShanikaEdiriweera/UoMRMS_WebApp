<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
</head>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Welcome page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        
        <!--<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>-->
        
	<!--<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />-->

        <link href="<c:url value='/static/css/mystyle.css' />" rel="stylesheet">
    </head>
        
<body>
    
    

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  <a href="try2.html">Results Provider</a>
  <a href="#">About US</a>
  <a href="#">Help</a>
  <a href="#">Contact</a>
</div>

    <div id="main">
    <!-- <h2>Sidenav Push Example</h2>
    <p>Click on the element below to open the side navigation menu, and push this content to the right. Notice that we add a black see-through background-color to body when the sidenav is opened.</p> -->
        <div class="navbar navbar-inverse navbar-static-top">
		
                <div class="container-fluid">
                      <a class="navbar-brand" href="#"><span style="font-size:30px;cursor:pointer" onclick="openNav()"> =</span> </a>
                    <a href="Default.aspx" class="navbar-brand"> Result Managment System</a>
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>	
                    </button>
                            <div class="collapse navbar-collapse navHeaderCollapse" >
                              
                                <ul class="nav navbar-nav navbar-right">

                                    <li><a href="#">Home</a></li>
                                    
                                    <li><a class="page-scroll" href ="#C">Information Center</a></li> 
                                </ul>
                            </div>
                      <br />
                      </div>
                </div>
        </div>

    <script src="<c:url value='/static/js/myjavascript.js' />"></script>
    </body>
</html>