<%-- 
    Document   : student
    Created on : Jun 12, 2016, 4:24:59 PM
    Author     : shanika
--%>
<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Student Home</title>
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
                                    <li><a class="page-scroll" href ="<c:url value="/logout" />">(${user})Logout</a></li> 
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
</div> <center>
       
            
           <div class="row">
 
            
                 

  <!-- Add the extra clearfix for only the required viewport -->
  <div class="clearfix visible-xs-block">  <img src="3-img.jpg" height="300px" width="900"></div> <br> <br>

            
                
            
  <form class="form-horizontal" role="form">
  
   <div class="form-group">
      <label class="control-label col-sm-2" for="pwd"> Your Index Number:</label>
      <div class="col-sm-10">
        <input type="index_number" class="form-control" id="pwd" placeholder="index number">
      </div>
    </div>
      
        <form class="form-horizontal" role="form">
  
   <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Your Faculty :</label>
      <div class="col-sm-10">
        <input type="index_number" class="form-control" id="pwd" placeholder="Faculty">
      </div>
    </div>
            
              <form class="form-horizontal" role="form">
  
   <div class="form-group">
      <label class="control-label col-sm-2" for="pwd"> Your Current GPA:</label>
      <div class="col-sm-10">
        <input type="index_number" class="form-control" id="pwd" placeholder="Current GPA">
      </div>
    </div>
                  
       <h2>Check Your  Results !</h2>
<button type="button" class="btn btn-info" height="20px"; width ="50px">SEMESTER:1</button>

<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
<button type="button" class="btn btn-info">SEMESTER:2</button>

<!-- Indicates a successful or positive action -->
<button type="button" class="btn btn-info">SEMESTER:3</button>

<!-- Contextual button for informational alert messages -->
<button type="button" class="btn btn-info">SEMESTER:4</button> <br> <br>

<!-- Indicates caution should be taken with this action -->
<button type="button" class="btn btn-info">SEMESTER:5</button>

<!-- Indicates a dangerous or potentially negative action -->
<button type="button" class="btn btn-info">SEMESTER:6</button>

<!-- Indicates a dangerous or potentially negative action -->
<button type="button" class="btn btn-info">SEMESTER:7</button>

<!-- Indicates a dangerous or potentially negative action -->
<button type="button" class="btn btn-info">SEMESTER:8</button><br> <br>
              
              
   <!--     <button type="button" class="btn btn-primary btn-lg" id="myBtn">View Results</button>

  <!-- Modal -->
 <!-- <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
   <!--   <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

    
    -->
  </form>
  <!-- Trigger the modal with a button -->

                
            
        
        
        
</center>
  
    

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="http://arrow.scrolltotop.com/arrow18.js"></script>
<noscript>Not seeing a <a href="http://www.scrolltotop.com/">Scroll to Top Button</a>? Go to our FAQ page for more info.</noscript>
        <script src="<c:url value='/static/js/myjavascript.js' />"></script>
    </body>
</html>
