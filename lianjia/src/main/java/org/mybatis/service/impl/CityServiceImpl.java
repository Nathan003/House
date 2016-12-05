package org.mybatis.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.dao.CityMapper;
import org.mybatis.entity.City;
import org.mybatis.entity.Province;
import org.mybatis.service.CityService;
import org.springframework.stereotype.Service;

@Service("cityService")
public class CityServiceImpl implements CityService{

	@Resource
	private CityMapper cityDao;
	@Override
	public List<City> getCityList(Province provinceid) {
		// TODO 自动生成的方法存根
		return cityDao.getCityList(provinceid);
	}

	@Override
	public int add(City city) {
		// TODO 自动生成的方法存根
		return 0;
	}

	@Override
	public int delete(City city) {
		// TODO 自动生成的方法存根
		return 0;
	}

	@Override
	public int update(City city) {
		// TODO 自动生成的方法存根
		return 0;
	}

}
