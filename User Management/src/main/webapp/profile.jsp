<%@page import="com.org.dto.User"%>
<%@page import="java.util.List"%>
<%@page import="com.org.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="components/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@ include file="components/user_home_navbar.jsp" %>
	<h1 class="text-center">Profile</h1>
	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">User Details</p>
						<table class="table">
							<thead>
								<tr>
									<th>Name</th>
									<th>Age</th>
									<th>Mobile</th>
									<th>Email</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
											<%
											UserDao doa=new UserDao();
											List<User> users=doa.fetchAllUsers();
											User user =(User) session.getAttribute("userObj");
											for(User u:users){
												if(user.getId()!=u.getId())
													continue;
											%><tr>
											<td><%=u.getName() %>	</td>
											<td><%=u.getAge() %>	</td>
											<td><%=u.getMobile() %>	</td>
											<td><%=u.getEmail() %>	</td>
											<td><a class="btn btn-primary" href="update_user.jsp?id=<%=u.getId()%>">Update</a>
											<a class="btn btn-danger" href="delete_user.jsp?id=<%=u.getId()%>">Delete</a></td>
											</tr>
										<%
										}
										%>
							</tbody>
						</table>

					</div>
				</div>


			</div>

		</div>


	</div>
	<br><br>
</body>
</html>