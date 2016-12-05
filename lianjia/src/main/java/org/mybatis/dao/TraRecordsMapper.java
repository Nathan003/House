package org.mybatis.dao;

import java.util.List;

import org.mybatis.entity.TraRecords;

public interface TraRecordsMapper {
	
	public List<TraRecords> getTraRecordList(TraRecords traRecords);
	
	public int insertTraRecords(TraRecords traRecords);
	
	public int updateTraRecords(TraRecords traRecords);
	
	public int deleteTraRecords(TraRecords traRecords);
}