<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*" %>
<%@ page import= "javax.sql.*" %> 
<% 
 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
 response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
 response.setDateHeader("Expires", 0); // Proxies.  
if(session.getAttribute("lnamef")==null )
response.sendRedirect("login_regi.html");
else{
%>

<html>
    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Pizza Site</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="author" href="humans.txt">
        <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css?family=Lora" rel="stylesheet"> 
        <script type="text/javascript"></script>
<style type="text/css">
.main{
height: 300px;
width:600px;
background-color: #ffff00;
color: black;
}
</style>
	</head>
  <body>
    	<header>
    		<nav id="header-nav" class="navbar navbar-default">
    			<div class="container">
    				
    			    <div class="navbar-brand">
    			    	<a href="index.jsp"><h1>Yummy Pizza</h1></a>
    			    </div>
    				
    				<div id="my-nav">
    					<ul id="nav-list" class="nav navbar-nav navbar-right">
    					    <li>
    					    	<a href="menu-categories.jsp"><span class="glyphicon glyphicon-cutlery"></span><br>MENU</a>
    					    </li>
    					     <li>
    					    <a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span><br>CART</a>
    					    </li>
    					    <li>
    					    	<a href="logout.jsp"><span class="glyphicon glyphicon-user"></span><br>LOGOUT</a>
    					    </li>
    					    <li id="phone">
    					    	<a href="tel:8149253957"><span>8149253957</span></a><div>* We Deliver</div>
    					    </li>
    					</ul>
    					
    				</div>
    			</div>
    		</nav>
    		
    	</header>
    	<center><!-- /header -->
<div class="main">
    
    <br>
    <br>
    <br>
    <br>
    <h2>
    Your order is on the way !!<br>
    Will be delivered in 30 minutes.
    </h2>
  
    	</div>
    	</center>
<center>
        <footer class="panel-footer">
            <div class="container">
                <div class="row">
                    <section id="hours" class="col-md-6">
                        <span>Hours:</span><br>
                        EveryDay :11:00am - 10:00pm<br>
                        Sunday Closed
                    </section>
                    <section id="address" class="col-md-6">
                        <span>Address:</span><br>
                        PICT, DHANKAWADI<br>
                        Pune.pin:411043
                    </section>
                </div>
            </div>
            
        </footer>
</center>
    	<script src="js/jquery-3.3.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
      


    </body>
</html>
<%}%>