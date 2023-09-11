<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<style>
body {background-color : black;}
h2 {color:blue; text-align:center; padding: 50px;}
h1 {color : orange; text-align: center; padding: 50px;}
</style>
<body>

	<%
	try{  
		 //int i=4;
		 String rname=request.getParameter("rname");
	String rphone=request.getParameter("rphone");
	String rpass=request.getParameter("rpass");
	String remail=request.getParameter("remail");
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3308/wtl","root","");
	    
		 
		//Statement stmt=con.createStatement();  
	    ResultSet rs;
	    String queryString1= "Select * from users where username=?";
		PreparedStatement state = con.prepareStatement(queryString1);
		state.setString(1, rname);
		
		ResultSet rs1= state.executeQuery();
		if(rs1.next()){
			
			%>
			<script type="text/javascript">
			alert("Username already exists please log in");window.location.href = "login_regi.html";
			</script>
			<% 
		}else{
	    String queryString = "Insert into users(username,password,mobile_no,email) values (?,?,?,?)";
	   PreparedStatement pstatement = con.prepareStatement(queryString);
       pstatement.setString(1,rname);
       pstatement.setString(2,rpass);
       pstatement.setString(3,rphone);
       pstatement.setString(4,remail);
       int i= pstatement.executeUpdate();
       
   	%>
	<script type="text/javascript">
	alert("Record inserted Please login to continue");window.location.href = "login_regi.html";
	</script>
	<% 
   
		con.close();  
		}
		}catch(Exception e){
			

			
			%>
			<script type="text/javascript">
			alert("Username already exists please log in");window.location.href = "login_regi.html";
			</script>
			<% 
		}  
		  
	%>
	<h2><a href = "login_regi.html" >Please Login</a></h2>
</body>
</html>