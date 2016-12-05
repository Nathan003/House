package org.mybatis.service;

import java.util.List;

import org.mybatis.entity.Province;

public interface ProvinceService {
	//查询房屋所在区县
	public List<Province> getProvinceList();	
	//添加
	public int add(Province province);		
	//删除
	public int delete(Province province);
	//更新
	public int update(Province province);
	public Object findTwoAndThree(int parseInt);
}
