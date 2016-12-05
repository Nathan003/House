package org.mybatis.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.dao.HouseMapper;
import org.mybatis.entity.House;
import org.mybatis.entity.SelectTemp;
import org.mybatis.service.HouseService;
import org.springframework.stereotype.Service;

@Service
public class HouseServiceImpl implements HouseService{

	@Resource
	private HouseMapper houseDao;
	
	@Override
	public int add(House house) {
		// TODO 自动生成的方法存根
		return houseDao.add(house);
	}

	@Override
	public int delete(House house) {
		// TODO 自动生成的方法存根
		return houseDao.delete(house);
	}

	@Override
	public List<House> getHouseList() {
		// TODO 自动生成的方法存根
		return houseDao.getHouseList();
	}

	@Override
	public int update(House house) {
		// TODO 自动生成的方法存根
		return houseDao.update(house);
	}

	@Override
	public List<House> getSelectLike(String house) {
		// TODO 自动生成的方法存根
		return houseDao.getSelectLike(house);
	}

	@Override
	public List<House> getHouseListByHouseParam(House house) {
		// TODO 自动生成的方法存根
		return houseDao.getHouseListByHouseParam(house);
	}
	/*@Override
	public List<House> getHouseListByArea(SelectTemp selectTemp) {
		// TODO 自动生成的方法存根
		System.out.println("按区域查找"+selectTemp.getAreaName()+selectTemp.getMinPrice()+selectTemp.getMaxPrice()
				+selectTemp.getMinHouseArea()+selectTemp.getMaxHouseArea()+selectTemp.getTypeName());
		return houseDao.getHouseListByArea(selectTemp);
	}*/

	@Override
	public List<House> getHouseListByArea(SelectTemp selectTemp) {
		// TODO 自动生成的方法存根
		return houseDao.getHouseListByArea(selectTemp);
	}
}
