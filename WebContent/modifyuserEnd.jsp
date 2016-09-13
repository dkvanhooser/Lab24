<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.vanhooser.lab24.DAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="User.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Success!</title>
</head>
<body>

<jsp:useBean id="obj" class="com.vanhooser.lab24.User">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>
<h1>User Successfully Modified</h1>
<%
DAO.modifyUser(obj);
%>

</body>
</html>