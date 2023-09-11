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
        <script type="text/javascript">
	var picCount = 0;
	var picArr = ["images/p1.jpg", "images/p2.jpg"];
	function nextPic()
	{
		picCount = (picCount+1 < picArr.length) ? picCount+1 : 0;
		var build = '<img src="'+picArr[picCount]+'" width="100%" height="60%" />';
		document.getElementById("imgHolder").innerHTML = build;
		setTimeout('nextPic()', 3000);	
	}
	

</script>
	</head>
  <body onload="setTimeout('nextPic()', 3000)" >
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
    		
    	</header><!-- /header -->

    	<div id="main-content" class="container">
    	<div id="imgHolder">
    		<img src="images/p2.jpg" alt="Pizza Img" width="100%" height="60%"> 
    		</div>
    		<br><br>
    		<div id="home-tiles" class="row">
    			<div class="col-md-4 ">
                    <a href="menu-categories.jsp"><div id="mn-tile"><img align="middle" alt="menu" src="images/p3.jpeg" height="100%" width=100%><span>menu</span></div></a>
    			</div>
    			<div class="col-md-4 ">
                     <a href="menu-categories.jsp"><div id="sp-tile"><img align="middle" alt="menu" src="images/p4.jpeg" height="100%" width=100%><span>specials</span></div></a>
                </div>
                <div class="col-md-4 ">
                     <a href="https://www.google.co.in/maps/place/Pune+Institute+of+Computer+Technology/@18.4575421,73.8486449,17z/data=!3m1!4b1!4m5!3m4!1s0x3bc2eac85230ba47:0x871eddd0a8a0a108!8m2!3d18.4575421!4d73.8508336?hl=en" target="_blank"><div id="mp-tile"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3784.57618972542!2d73.84864491477451!3d18.457542087445763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2eac85230ba47%3A0x871eddd0a8a0a108!2sPune+Institute+of+Computer+Technology!5e0!3m2!1sen!2sin!4v1521789154513" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe><span>map</span></div></a>
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
                        PICT, DHANKAWADI<br>
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