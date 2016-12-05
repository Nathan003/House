package org.mybatis.service.impl;

import javax.annotation.Resource;

import org.mybatis.dao.SelectTempMapper;
import org.mybatis.entity.SelectTemp;
import org.mybatis.service.SelectTempService;
import org.springframework.stereotype.Service;

@Service
public class SelectTempServiceImpl implements SelectTempService {
	
	@Resource
	private SelectTempMapper selectTempDao;
	
	@Override
	public SelectTemp getSelectTemp() {
		// TODO 自动生成的方法存根
		return selectTempDao.getSelectTemp();
	}

	@Override
	public int add(SelectTemp selectTemp) {
		// TODO 自动生成的方法存根
		return selectTempDao.add(selectTemp);
	}

	@Override
	public int delete(SelectTemp selectTemp) {
		// TODO 自动生成的方法存根
		return selectTempDao.delete(selectTemp);
	}

	@Override
	public int update(SelectTemp selectTemp) {
		// TODO 自动生成的方法存根
		System.out.println("temp:"+selectTemp.getAreaName());
		return selectTempDao.update(selectTemp);
	}

}
