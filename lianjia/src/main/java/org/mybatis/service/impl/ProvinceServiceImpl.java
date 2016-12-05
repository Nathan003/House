package org.mybatis.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.dao.ProvinceMapper;
import org.mybatis.entity.Province;
import org.mybatis.service.ProvinceService;
import org.springframework.stereotype.Service;
@Service("provinceService")
public class ProvinceServiceImpl implements ProvinceService {

	@Resource
	private ProvinceMapper provinceDao;
	
	@Override
	public List<Province> getProvinceList() {
		// TODO 自动生成的方法存根
		return provinceDao.getProvinceList();
	}

	@Override
	public int add(Province province) {
		// TODO 自动生成的方法存根
		return provinceDao.add(province);
	}

	@Override
	public int delete(Province province) {
		// TODO 自动生成的方法存根
		return provinceDao.delete(province);
	}

	@Override
	public int update(Province province) {
		// TODO 自动生成的方法存根
		return provinceDao.update(province);
	}

	@Override
	public Object findTwoAndThree(int parseInt) {
		// TODO 自动生成的方法存根
		return null;
	}

}
