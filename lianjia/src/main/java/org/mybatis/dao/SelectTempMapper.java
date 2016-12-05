package org.mybatis.dao;

import java.util.List;
import org.mybatis.entity.SelectTemp;

/**
 * 临时表操作接口
 * @author zDUKE
 *
 */
public interface SelectTempMapper {
	//查询房屋所在市
	public SelectTemp getSelectTemp();	
	//添加
	public int add(SelectTemp selectTemp);		
	//删除
	public int delete(SelectTemp selectTemp);
	//更新
	public int update(SelectTemp selectTemp);
}
