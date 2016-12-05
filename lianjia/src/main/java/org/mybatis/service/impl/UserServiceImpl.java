package org.mybatis.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.dao.UserMapper;
import org.mybatis.entity.User;
import org.mybatis.service.UserService;
import org.springframework.stereotype.Service;
@Service("UserService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserMapper UserDao;
	
	@Override
	public List<User> getUserList() {
		// TODO 自动生成的方法存根
		return UserDao.getUserList();
	}

	@Override
	public int update(User user) {
		// TODO 自动生成的方法存根
		return UserDao.update(user);
	}

	@Override
	public int insertUser(User user) {
		// TODO 自动生成的方法存根
		return UserDao.insertUser(user);
	}

	@Override
	public User getUser(User user) {
		// TODO 自动生成的方法存根
		return UserDao.getUser(user);
	}

	@Override
	public int deleteUser(User user) {
		// TODO 自动生成的方法存根
		return UserDao.delete(user);
	}

	@Override
	public int updateUser(User user) {
		// TODO 自动生成的方法存根
		return UserDao.update(user);
	}

}
