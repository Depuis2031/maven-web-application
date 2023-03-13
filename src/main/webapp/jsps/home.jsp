<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tabe Solutions- Home Page</title>
<link href="images/mylogo.png" rel="icon">
</head>
</head>
<body>
<h1 align="center">SHALOM LEKULAM MY CHILDREN.</h1>
<h1 align="center">TECHNOLOGY IS AT ITS BEST SO DON'T WORRY AND TRUST THE PROCESS.
	DevOps is the new way of Life.</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
		
</h1>
	
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/mymarklogo.png" alt="" width="150">
	</span>
	<span style="font-weight: bold;">
                Engineer Tabe, 
		Tourcoing, France
		+33 744 567 554,
		doctorwiki6@gmail.com
		<br>
		<a href="mailto:mylandmarktech@gmail.com">Mail to Landmark Technologies</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center> Engineer Tabe - Consultant, Training and Software Development</p>
<p align=center><small>Copyrights 2023 by <a href="http://taberocknjang.com/">Tabe loads</a> </small></p>

</body>
</html>
