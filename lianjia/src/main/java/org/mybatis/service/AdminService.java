package org.mybatis.service;

import java.util.List;

import org.mybatis.entity.Admin;



public interface AdminService {
	//查询用户
	public List<Admin> select();
}
