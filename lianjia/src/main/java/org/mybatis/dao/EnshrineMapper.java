package org.mybatis.dao;

import java.util.List;

import org.mybatis.entity.Enshrine;

public interface EnshrineMapper {
	
	//添加方法
	public int add(Enshrine ensheine);
	
	//删除方法
	public int delete(Enshrine ensheine);
	
	//查看方法
	public List<Enshrine> getHouseList(String userName);
	
	
}
