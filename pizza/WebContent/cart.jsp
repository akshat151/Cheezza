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
        <title><%out.print(session.getAttribute("lnamef")); %>Cart</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="author" href="humans.txt">
        <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css?family=Lora" rel="stylesheet"> 
        <style>
        input[type=submit]{ color: #61122f;
	background-color:#ffff00;
        border : 0px;
        width : 200px;
        height : 30px;
        }
        </style>
</head>
<body>
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
    	<center>
<table  style="border-collapse: separate; border-spacing: 10px; padding: 20px; width: 500px; color:#ffff00 ">
<tr>
<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspImage</td>
<td>Pizza name</td>
<td>Price</td>
</tr>
<%

int x=0;
String lname = session.getAttribute("lnamef").toString();

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3308/wtl","root","");
  int z=3;
		String queryString4= "Select * from cart where username=?";
	PreparedStatement state2 = con.prepareStatement(queryString4);
	state2.setString(1, lname);
	
	ResultSet rs3= state2.executeQuery();
while(rs3.next())
{
	%><tr>
	<td>
	<img src="images/<%=rs3.getString(1)%>.jpg" height="100px" width="100px"></td>
	<td>
	<%=rs3.getString(4) %></td>
	<td>
	<%int k= rs3.getInt(5); 
	x=x+k;
	out.print(k);
	%></td>
	</tr>
	
<% }
String xs = Integer.toString(x);
session.setAttribute("price",xs);
%>

</table>
<form action="final_pre.jsp">
<input type="submit" value="Order now ">
</form>
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
                       PICT, Dhankawadi,<br>
                        Pune.pin:411043
                    </section>
                </div>
            </div>
             
        </footer>

    	<script src="js/jquery-3.3.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
</center>

</body>
</html>
<%}%>