package com.org.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.org.Utilities.HelperClass;
import com.org.dto.User;

public class UserDao {
	public void saveUser(User user) {
		Connection con=HelperClass.getDBConnection();
		try {
			PreparedStatement pst=con.prepareStatement("insert into user(name,age,mobile,email,password) values (?,?,?,?,?)");
			pst.setString(1, user.getName());
			pst.setInt(2, user.getAge());
			pst.setLong(3, user.getMobile());
			pst.setString(4, user.getEmail());
			pst.setString(5, user.getPassword());
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public List<User> fetchAllUsers() {
		Connection con=HelperClass.getDBConnection();
		User user=null;
		List<User> list=new ArrayList<User>();
		try {
			PreparedStatement pst=con.prepareStatement("select * from user");
			ResultSet rst=pst.executeQuery();
			while(rst.next())
			{
				String name=rst.getString("name");
				int age=rst.getInt("age");
				long mobile=rst.getLong("mobile");
				String email1=rst.getString("email");
				String password2=rst.getString("password");
				user=new User();
				user.setId(rst.getInt("id"));
				user.setName(name);
				user.setAge(age);
				user.setMobile(mobile);
				user.setEmail(email1);
				user.setPassword(password2);
				list.add(user);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return list;
		
	}
	public User fetchUserById(int id)
	{
		
		Connection con=HelperClass.getDBConnection();
		try {
			PreparedStatement pst=con.prepareStatement("select * from user where id=?");
			pst.setInt(1, id);
			ResultSet rst=pst.executeQuery();
			User user=null;
			if(rst.next())
			{
			//	int id=rst.getInt("id");
				String name=rst.getString("name");
				int age=rst.getInt("age");
				long mobile=rst.getLong("mobile");
				String email1=rst.getString("email");
				String password2=rst.getString("password");
				user=new User();
				user.setId(rst.getInt("id"));
				user.setName(name);
				user.setAge(age);
				user.setMobile(mobile);
				user.setEmail(email1);
				user.setPassword(password2);
			}
			return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	public void updateUserById(User user)
	{
		Connection con=HelperClass.getDBConnection();
		try {
			PreparedStatement pst=con.prepareStatement("update user set name=?,age=?,mobile=?,email=? where id=?");
			pst.setString(1,user.getName());
			pst.setInt(2,user.getAge());
			pst.setLong(3,user.getMobile());
			pst.setString(4,user.getEmail());
			pst.setInt(5,user.getId());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void deleteUserById(int id)
	{
		Connection con=HelperClass.getDBConnection();
		try {
			PreparedStatement pst=con.prepareStatement("delete from user  where id=?");
			pst.setInt(1,id);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public User fetchUserByEmailAndPassword(String email,String password)
	{
		Connection con=HelperClass.getDBConnection();
		try {
			PreparedStatement pst=con.prepareStatement("select * from user where email=? and password=?");
			pst.setString(1, email);
			pst.setString(2, password);
			ResultSet rst=pst.executeQuery();
			User user=null;
			if(rst.next())
			{
			//	int id=rst.getInt("id");
				String name=rst.getString("name");
				int age=rst.getInt("age");
				long mobile=rst.getLong("mobile");
				String email1=rst.getString("email");
				String password2=rst.getString("password");
				user=new User();
				user.setId(rst.getInt("id"));
				user.setName(name);
				user.setAge(age);
				user.setMobile(mobile);
				user.setEmail(email1);
				user.setPassword(password2);
			}
			return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}
