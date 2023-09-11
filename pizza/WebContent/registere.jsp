<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registratione</title>
</head>
<style>
h2{text-align: center; color:white;}
span{color:white;}
</style>
<body>
<h2><% out.println("<span>Please Insert Again as the username already exists</span>");
%></h2>
<jsp:include page="login_regi.html"></jsp:include>			
			
</body>
</html>