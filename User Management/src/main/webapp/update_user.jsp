<%@page import="com.org.dto.User"%>
<%@page import="com.org.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="login.jsp"%>
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
<%@ include file="components/user_home_navbar.jsp" %>

	<%
    UserDao dao = new UserDao();
	Integer id=Integer.parseInt(request.getParameter("id"));
	//out.println(id);
	User u = dao.fetchUserById(id);
%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card">
					<div class="card-body">
						<p class="fs-4 text-center"><%=u.getName() %> Update</p>
						<form action="update_user" method="post">
						<div class="mb-3">
								<label class="form-label">Name</label> <input
									name="name" type="text" class="form-control" value=<%=u.getName() %> required>
							</div>
							<div class="mb-3">
								<label class="form-label">Age</label> <input
									name="age" type="text" class="form-control" value=<%=u.getAge() %> required>
							</div>
							<div class="mb-3">
								<label class="form-label">Mobile</label> <input
									name="mobile" type="text" class="form-control" value=<%=u.getMobile() %> required>
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label> <input
									name="email" type="email" class="form-control" value=<%=u.getEmail() %> required>
									<input name="id" type="hidden" value=<%=u.getId() %>>
							</div>
							<button type="submit" class="btn bg-primary text-white col-md-12">Update</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>