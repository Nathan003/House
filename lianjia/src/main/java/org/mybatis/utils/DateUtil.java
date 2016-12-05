package org.mybatis.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/**
 * 格式转换工具类
 * @author gongeb
 *
 */
public class DateUtil {
	static SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	public static String getDate(Date date){
		String tmpDate=sdf.format(date);
		return tmpDate;
	}
	public static Date setDate(String date){
		Date tmpDate=null;
		try {
			tmpDate = sdf.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			System.err.println("出现错误：输入的时间格式不正确！"  );
			e.printStackTrace();
		}
		return tmpDate;
	}
}
