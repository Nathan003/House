package org.mybatis.dao;

import java.util.List;

import org.mybatis.entity.Province;

public interface ProvinceMapper {
	//查询房屋所在区县
	public List<Province> getProvinceList();	
	//添加
	public int add(Province province);		
	//删除
	public int delete(Province province);
	//更新
	public int update(Province province);
}
