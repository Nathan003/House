package org.mybatis.dao;

import java.util.List;

import org.mybatis.entity.Area;
import org.mybatis.entity.City;

public interface AreaMapper {
	// 查询房屋所在区县
	public List<Area> getAreaList();

	// 根据cityid查找该市的区县
	public List<Area> getAreaListLinkage(City cityid);

	// 添加
	public int add(Area area);

	// 删除
	public int delete(Area area);

	// 更新
	public int update(Area area);
}
