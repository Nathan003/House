package org.mybatis.dao;

import java.util.List;

import org.mybatis.entity.Admin;
import org.springframework.stereotype.Repository;

public interface AdminMapper {
	public List<Admin> select();
}