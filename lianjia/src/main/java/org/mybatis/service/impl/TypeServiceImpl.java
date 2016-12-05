package org.mybatis.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.dao.TypeMapper;
import org.mybatis.entity.Type;
import org.mybatis.service.TypeService;
import org.springframework.stereotype.Service;

@Service("typeService")
public class TypeServiceImpl implements TypeService{

	@Resource
	private TypeMapper typeDao;
	
	@Override
	public List<Type> getTypeList() {
		// TODO 自动生成的方法存根
		return typeDao.getTypeList();
	}

	@Override
	public int add(Type type) {
		// TODO 自动生成的方法存根
		return typeDao.add(type);
	}

	@Override
	public int delete(Type type) {
		// TODO 自动生成的方法存根
		return typeDao.delete(type);
	}

	@Override
	public int update(Type type) {
		// TODO 自动生成的方法存根
		return typeDao.update(type);
	}

}
