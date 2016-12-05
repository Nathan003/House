package org.mybatis.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.dao.AreaMapper;
import org.mybatis.entity.Area;
import org.mybatis.entity.City;
import org.mybatis.service.AreaService;
import org.springframework.stereotype.Service;
@Service("areaService")
public class AreaServiceImpl implements AreaService {

	@Resource
	private AreaMapper areaDao;
	
	@Override
	public List<Area> getAreaList() {
		// TODO 自动生成的方法存根
		return areaDao.getAreaList();
	}

	@Override
	public List<Area> getAreaListLinkage(City cityid) {
		// TODO 自动生成的方法存根
		return areaDao.getAreaListLinkage(cityid);
	}
	
	@Override
	public int add(Area area) {
		// TODO 自动生成的方法存根
		return areaDao.add(area);
	}

	@Override
	public int delete(Area area) {
		// TODO 自动生成的方法存根
		return areaDao.delete(area);
	}

	@Override
	public int update(Area area) {
		// TODO 自动生成的方法存根
		return areaDao.update(area);
	}

	

}
