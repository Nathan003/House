package org.mybatis.service;

import java.util.List;

import org.mybatis.entity.Area;
import org.mybatis.entity.City;

public interface AreaService {
	//查询房屋所在区县
	public List<Area> getAreaList();
	
	public List<Area> getAreaListLinkage(City cityid);
	
	//添加
	public int add(Area area);		
	//删除
	public int delete(Area area);
	//更新
	public int update(Area area);
}
