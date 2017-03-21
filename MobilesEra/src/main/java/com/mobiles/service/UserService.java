package com.mobiles.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mobiles.daoimpl.UserDAOImpl;
import com.mobiles.model.User;

@Service
@Transactional
public class UserService 
{
	@Autowired
	UserDAOImpl userDAOImpl;
	
	public void addUser(User user)
	{
		userDAOImpl.addUser(user);
	}
	
	public User getUserId(int userId)
	{
		return userDAOImpl.getUserId(userId);		
	}
	
	public User getUserByusername(String username)
	{
		return userDAOImpl.getUserByusername(username);
	}
	
}
