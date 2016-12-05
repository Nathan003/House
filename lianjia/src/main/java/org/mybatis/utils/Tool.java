package org.mybatis.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.taglibs.standard.tag.common.fmt.ParseDateSupport;

public class Tool {
	public static Date getCurrentDate() {
		Date date=new Date();
		Date curDate=null;
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String cDate=sdf.format(date);
		System.out.println(cDate);
		try {
			curDate = sdf.parse(cDate);
		} catch (ParseException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return curDate;
		
		
	}
	
	public static void main(String[] args) {
		System.out.println(Tool.getCurrentDate());
	}
	
	
	
	
}
