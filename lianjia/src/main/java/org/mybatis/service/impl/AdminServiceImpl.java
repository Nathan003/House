package org.mybatis.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.dao.AdminMapper;
import org.mybatis.entity.Admin;
import org.mybatis.service.AdminService;
import org.springframework.stereotype.Service;
@Service("AdminService")
public class AdminServiceImpl implements AdminService{

	@Resource
	private AdminMapper AdminDao;

	@Override
	public List<Admin> select() {
		// TODO 自动生成的方法存根
		return AdminDao.select();
	}




	}


	



