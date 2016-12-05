package org.mybatis.service;

import java.util.List;

import org.mybatis.entity.Enshrine;

public interface EnshrineService {
	
	//添加方法
		public int add(Enshrine enshrine);
		
		//删除方法
		public int delete(Enshrine enshrine);
		
		//查看方法
		public List<Enshrine> getHouseList(String userName);
		
}
