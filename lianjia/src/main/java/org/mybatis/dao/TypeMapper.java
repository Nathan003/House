package org.mybatis.dao;

import java.util.List;

import org.mybatis.entity.Type;


public interface TypeMapper {
	//查询房屋类型
	public List<Type> getTypeList();	
	//添加
	public int add(Type type);		
	//删除
	public int delete(Type type);
	//更新
	public int update(Type type);
}
