<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.vanhooser.lab24.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="User.css">
<title>Users</title>
</head>
<body>
<jsp:useBean id="obj" class="com.vanhooser.lab24.User">
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>


	<h1>List of Users</h1>
	<table>
	<th> ID</th> <th> Username</th> <th> E-mail </th> <th> Full Name </th><th>Edit</th><th>Delete</th>
		<%
		
			List<User> users = DAO.getAllUsers();
		
			for (User p : users) {
				out.println("<tr><td>" + p.getID() + "</td><td>" + p.getUsername() + 
						"</td><td>" + p.getEmail() + "</td><td>" + p.getFullname() 
						+ "<td><a href=\"modifyuser.jsp?id=" + p.getID()+ "\">Edit User</a>" + "<td><a href=\"deleteuser.jsp?id=" 
						+ p.getID()+ "\">Delete</a>" + "</td></tr>");
			}
			
		%>
	
	</table>
</body>
</html>