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



String lname = session.getAttribute("lnamef").toString();

		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3308/wtl","root","");

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
        <style>
        input[type=submit]{ color: #ffff00;
	background-color: #61122f;
        border : 0px;
        width : 100px;
        height : 30px;
        }
        </style>



</script>
        
	</head>
    <body >
    	<header>
    		<nav id="header-nav" class="navbar navbar-default">
    			<div class="container">
    				
    			    <div class="navbar-brand">
    			    	<a href="index.html"><h1>Yummy Pizza</h1></a>
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
    		
    	</header><!-- /header -->

    	<div id="main-content" class="container">
    		<h2 id="menu-categories-title" class="text-center">Menu Categories</h2>
            <div class="row menu-tiles">
                <div class="col-md-4">
                    <div id="p1" class="items">
                        <img src="images/margarita.jpg" alt="Margherita">
                        <div class="name">
                            <h3>Margherita</h3>
      
                            <form action="margherita.jsp" method="post">
                            <input type="submit" value="Add to cart">
                            </form>
                        </div> 
                    </div>
                      
                </div>
                <script type="text/javascript">
                function margherita() {

                </script>
                <div class="col-md-4">
                      <div id="p2" class="items">
                         <img src="images/Peppy_Paneer.jpg" alt="Peppy Paneer">
                         <div class="name">
                            <h3>Peppy Paneer</h3>
                            
                          <form action="peppy.jsp" method="post">
                            <input type="submit" value="Add to cart">
                            </form>
                         </div>  
                    </div> 
                </div>
                <div class="col-md-4">
                      <div id="p3" class="items">
                         <img src="images/Paneer_Makhni.jpg" alt="Paneer Makhani">  
                         <div class="name">
                            <h3>Peppy Makhani</h3>
                            
                            <form action="makhani.jsp" method="post">
                            <input type="submit" value="Add to cart">
                            </form>
                        </div>  
                    </div> 
                </div>    
            </div>
    		
    	</div><!--end of main context-->
    	
    	<div id="main-content" class="container">
            <div class="row menu-tiles">
                <div class="col-md-4">
                    <div id="p1" class="items">
                        <img src="images/Veg_Extravaganz.jpg" alt="Veg_Extravaganz">
                        <div class="name">
                            <h3>Veg Extravaganza</h3>
      						<form action="extra.jsp" method="post">
                            <input type="submit" value="Add to cart">
                            </form>
                        </div> 
                    </div>
                      
                </div>
                <div class="col-md-4">
                      <div id="p2" class="items">
                         <img src="images/Farmhouse.jpg" alt="Farmhouse">
                         <div class="name">
                            <h3>Farmhouse</h3>
                            
                           <form action="farm.jsp" method="post">
                            <input type="submit" value="Add to cart">
                            </form>
                         </div>  
                    </div> 
                </div>
                <div class="col-md-4">
                      <div id="p3" class="items">
                         <img src="images/Mexican_Green_Wave.jpg" alt="Mexican green Wave">  
                         <div class="name">
                            <h3>Mexican Green Wave</h3>
                            
                            <form action="mexi.jsp" method="post">
                            <input type="submit" value="Add to cart">
                            </form>
                        </div>  
                    </div> 
                </div>    
            </div>
    		
    	</div><!--end of main context-->

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
                       PICT, Dhankawadi,<br>
                        Pune.pin:411043
                    </section>
                </div>
            </div>
             
        </footer>

    
          	<script src="js/jquery-3.3.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
      


    </body>
</html>
<%}%>