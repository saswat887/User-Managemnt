<%@page import="com.org.dto.User"%>
<%@page import="com.org.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTER</title>
<%@ include file="components/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@ include file="components/navbar.jsp" %>

	<%
	 UserDao dao = new UserDao();
	Integer id=Integer.parseInt(request.getParameter("id"));
		//out.println(id);
	 dao.deleteUserById(id);
	response.sendRedirect("Home.jsp");
	%>



</body>
</html>