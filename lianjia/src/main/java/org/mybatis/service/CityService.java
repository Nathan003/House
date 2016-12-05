package org.mybatis.service;

import java.util.List;

import org.mybatis.entity.City;
import org.mybatis.entity.Province;

public interface CityService {
	//查询房屋所在市
	public List<City> getCityList(Province provinceid);	
	//添加
	public int add(City city);		
	//删除
	public int delete(City city);
	//更新
	public int update(City city);
}
