<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<style>
body {background-color= pink;}
</style>
<body>
<%@ page import = "java.sql.*"%>
<%@ page import = "javax.sql.*" %>
<%
try
{
	String lname= request.getParameter("lname");
	String lpassword=request.getParameter("lpass");
	Class.forName("com.mysql.jdbc.Driver"); 
	session.setAttribute("lnamef", lname);
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3308/wtl","root","");
	String queryString= "Select * from users where username=? and password=?";
	PreparedStatement state = con.prepareStatement(queryString);
	state.setString(1, lname);
	state.setString(2, lpassword);
	ResultSet rs= state.executeQuery();
	if(rs.next()){
		session =request.getSession();
		String uname = session.getAttribute("lnamef").toString();
    response.sendRedirect("index.jsp");
	}
	else
		%>
	<script type="text/javascript">
	alert("Invalid credentials");window.location.href = "login_regi.html";
	</script>
	<% 
}
catch(Exception s){
	
}
%>
</body>  
</html>