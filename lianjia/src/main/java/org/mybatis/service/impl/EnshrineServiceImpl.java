package org.mybatis.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.dao.EnshrineMapper;
import org.mybatis.entity.Enshrine;
import org.mybatis.service.EnshrineService;
import org.springframework.stereotype.Service;

@Service
public class EnshrineServiceImpl implements EnshrineService{
	
	@Resource
	private EnshrineMapper enshrineMapper;
	
	@Override
	public int add(Enshrine ensheine) {
		// TODO Auto-generated method stub
		return enshrineMapper.add(ensheine);
	}

	@Override
	public int delete(Enshrine ensheine) {
		// TODO Auto-generated method stub
		return enshrineMapper.delete(ensheine);
	}

	@Override
	public List<Enshrine> getHouseList(String userName) {
		// TODO Auto-generated method stub
		return enshrineMapper.getHouseList(userName);
	}
	
	
}
