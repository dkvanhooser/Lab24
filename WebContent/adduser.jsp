<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.vanhooser.lab24.DAO"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="User.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Add user</h1>


<jsp:useBean id="obj" class="com.vanhooser.lab24.User">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>


<%
int i= DAO.addUser(obj); 
if (i > 0)  
	out.print("User successfully added");  
else
	out.println("Error; User not added");

%>

</body>
</html>