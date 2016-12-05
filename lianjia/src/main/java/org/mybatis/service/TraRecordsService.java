package org.mybatis.service;

import java.util.List;

import org.mybatis.entity.TraRecords;

public interface TraRecordsService {
	
	public List<TraRecords> getTraRecordList(TraRecords traRecords);
	
	public int insertTraRecords(TraRecords traRecords);
	
	public int updateTraRecords(TraRecords traRecords);
	
	public int deleteTraRecords(TraRecords traRecords);
}
