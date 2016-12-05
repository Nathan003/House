package org.mybatis.service;

import org.mybatis.entity.SelectTemp;

public interface SelectTempService {
	//查询房屋所在市
	public SelectTemp getSelectTemp();	
	//添加
	public int add(SelectTemp selectTemp);		
	//删除
	public int delete(SelectTemp selectTemp);
	//更新
	public int update(SelectTemp selectTemp);
}
