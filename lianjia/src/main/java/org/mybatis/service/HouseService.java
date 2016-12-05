package org.mybatis.service;

import java.util.List;

import org.mybatis.entity.House;
import org.mybatis.entity.SelectTemp;

public interface HouseService {
	//添加
	public int add(House house);
	
	//删除用户
	public int delete(House house);
	
	//查询用户
	public List<House> getHouseList();
	
	//根据房屋参数查询
	public List<House> getHouseListByHouseParam(House house);
	
	//更新用户
	public int update(House house);
	
	public List<House> getSelectLike(String house);
	
	public List<House> getHouseListByArea(SelectTemp selectTemp);
}
