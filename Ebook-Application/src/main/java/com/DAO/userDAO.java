package com.DAO;

import com.entity.User;

public interface userDAO {
	public boolean register(User us);
	
	public User login(String email, String password);
}
