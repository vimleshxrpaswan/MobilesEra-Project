package com.mobiles.dao;

import java.util.List;

import com.mobiles.model.User;

public interface UserDAO 
{
	public void addUser(User user);
	
	public User getUserId(int userId);
	
	public User getUserByusername(String username);
	
	public List<User> fetchAllUser();
	
	public String fetchAllUserByJson();
	
	public void toggleUserStatus(int userId);
}
