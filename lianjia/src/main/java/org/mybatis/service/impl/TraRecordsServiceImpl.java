package org.mybatis.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.dao.TraRecordsMapper;
import org.mybatis.entity.TraRecords;
import org.mybatis.service.TraRecordsService;
import org.springframework.stereotype.Service;
@Service("traRecordsService")
public class TraRecordsServiceImpl implements TraRecordsService{
	
	@Resource
	private TraRecordsMapper tMapperDao;
	
	
	@Override
	public List<TraRecords> getTraRecordList(TraRecords traRecords) {
		if(traRecords!=null){
			if(traRecords.getHouseAddress()!=null
					&& !traRecords.getHouseAddress().equals("")){
				traRecords.setHouseAddress("%"+traRecords.getHouseAddress()+"%");
			}
		}
		return tMapperDao.getTraRecordList(traRecords);
	}

	@Override
	public int insertTraRecords(TraRecords traRecords) {
		
		return tMapperDao.insertTraRecords(traRecords);
	}

	@Override
	public int updateTraRecords(TraRecords traRecords) {
		
		return tMapperDao.updateTraRecords(traRecords);
	}

	@Override
	public int deleteTraRecords(TraRecords traRecords) {
		
		return tMapperDao.deleteTraRecords(traRecords);
	}

}
