package org.mybatis.dao;

import java.util.List;

import org.mybatis.entity.House;
import org.mybatis.entity.User;

public interface UserMapper {
	public List<User> getUserList();
	
	public int update(User user);
	
	public int insertUser(User user);
	
	//删除用户
		public int delete(User user);
		
		public User getUser(User user);
}
