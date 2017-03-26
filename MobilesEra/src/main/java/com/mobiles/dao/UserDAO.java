package com.mobiles.dao;

import com.mobiles.model.User;

public interface UserDAO 
{
	public void addUser(User user);
	
	public User getUserId(int userId);
	
	public User getUserByusername(String username);
	
	public String fetchAllUserByJson();
}
