<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.vanhooser.lab24.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="User.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modify User</title>
</head>
<body>
<jsp:useBean id="obj" class="com.vanhooser.lab24.User">
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>

<form name="form1" action="modifyuserEnd.jsp" method="get">
<input type = "hidden" name="ID" value = "<%out.print(Integer.valueOf(request.getParameter("id")));%>">
Username:<input type = "text" name = "username" placeholder= "<%obj.getUsername();%>" size= "17"><br />
Password:<input type = "password" name = "password" size= "20"><br />
E-mail:<input type ="text" name ="email" size= "25"><br />
Full Name:<input type = "text" name = "fullname" size= "30"><br />
Permissions (0=admin 1=user): 
<input type = "text" name = "permission" size= "30"><br />
	<button type="submit">Submit!</button>
</form>
</body>
</html>