package org.mybatis.service;

import java.util.List;

import org.mybatis.entity.User;

public interface UserService {
	public List<User> getUserList();
	
	public int update(User user);
	
	public int insertUser(User user);
	public User getUser(User user);

	public int deleteUser(User delUser);

	public int updateUser(User user);
}
