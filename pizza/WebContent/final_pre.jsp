<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>
<% 
String str = (String)session.getAttribute("price");
int st = Integer.parseInt(str);
if(st>0){
%>
alert("Total price is <%=session.getAttribute("price")%>");
window.location.href = "final.jsp";
<%}
else{
	%>alert("You have nothing in cart");
	window.location.href = "menu-categories.jsp";	
	
<%}%>
</script>
</head>
<body>

</body>
</html>