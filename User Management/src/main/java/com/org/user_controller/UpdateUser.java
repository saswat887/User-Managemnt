package com.org.user_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.org.dao.UserDao;
import com.org.dto.User;

@WebServlet("/update_user")
public class UpdateUser extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String age=req.getParameter("age");
		String mobile=req.getParameter("mobile");
		String email=req.getParameter("email");
		User user=new User();
		user.setName(name);
		user.setAge(Integer.parseInt(age));
		user.setMobile(Long.parseLong(mobile));
		user.setEmail(email);
		user.setId(id);
		UserDao doa=new UserDao();
		doa.updateUserById(user);
		resp.sendRedirect("Home.jsp");
	}
}
