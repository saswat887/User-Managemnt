<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String s=(String)session.getAttribute("log");
		if(s!=null)
		{
			session.removeAttribute("log");
			session.invalidate();
			response.sendRedirect("login.jsp");
		}
	
	%>
</body>
</html>