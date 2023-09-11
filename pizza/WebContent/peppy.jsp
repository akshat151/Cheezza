<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.*" %>
<%@ page import= "javax.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%
    String lname = session.getAttribute("lnamef").toString();

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3308/wtl","root","");
      int z=2;
   		String queryString4= "Select * from cart where username=? and pizza_id=?";
		PreparedStatement state2 = con.prepareStatement(queryString4);
		state2.setString(1, lname);
		state2.setInt(2,z);
		ResultSet rs3= state2.executeQuery();
		if(rs3.next()){
			
			%>
			
			<script>alert("Already inserted in the cart");window.location.href = "menu-categories.jsp";</script>
			
			<% }
		else{
String queryString5 = "Insert into cart(img_path,username,pizza_id,pizza_name,price) values ('Peppy_Paneer',?,2,'Peppy Paneer',300)";
   		PreparedStatement pstatement2 = con.prepareStatement(queryString5);
   	  	pstatement2.setString(1,lname);
   	 	
   		 int i3= pstatement2.executeUpdate();
   		
   		
   		
    %>
    	<script>alert("Peppy Paneer added");window.location.href = "menu-categories.jsp";</script>
    <%}%>
    
		
