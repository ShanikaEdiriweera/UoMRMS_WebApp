<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Admin Home</title>
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
    <div id="main">
 <!-- <h2>Sidenav Push Example</h2>
  <p>Click on the element below to open the side navigation menu, and push this content to the right. Notice that we add a black see-through background-color to body when the sidenav is opened.</p> -->
      
          <div class="navbar navbar-inverse navbar-static-top">
		

                <div class="container-fluid">
                      <a class="navbar-brand" href="#"><span style="font-size:30px;cursor:pointer" onclick="openNav()"> =</span> </a>
                    <a href="Default.aspx" class="navbar-brand"> Results Management System</a>
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

       <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  <a href="Default2.aspx">About Us</a>
  <a href="#">Results Provider</a><!-- Can check others results-->
  <a href="#">Results Statistics</a>
  <a href="#">Contact Us</a>
</div>
    
        
         <div class="form-group">
  
 
   <label class="control-label col-sm-2" for="pwd">Department:</label>
      <div class="col-sm-10"><select class="form-control" id="sel1">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
      </select>
             </div> <br> <br>
      
     
    
   <label class="control-label col-sm-2" for="pwd">Faculy :</label>
      <div class="col-sm-10"><select class="form-control" id="sel1">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
      </select>
             </div> <br> <br>
             
 
   <label class="control-label col-sm-2" for="pwd">Batch:</label>
      <div class="col-sm-10"><select class="form-control" id="sel1">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
      </select>
             </div> <br> <br> <br>
             
          <center>  <button type="button" class="btn btn-info" style="float:right" >View Statistics </button  </center> 
       </div>
              
 <h2>Performance Graphs</h2>
  <ul class="nav nav-tabs">
    <li class="active"><a href="#home">Home</a></li>
    <li><a href="#menu1">Menu 1</a></li>
    <li><a href="#menu2">Menu 2</a></li>
    <li><a href="#menu3">Menu 3</a></li>
  </ul>
             
               <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
	Dear <strong>${user}</strong>, Welcome to DBA Page.
	<a href="<c:url value="/logout" />">Logout</a>
        <script src="<c:url value='/static/js/myjavascript.js' />"></script>
</body>
</html>