package com.jxlg.dao;

import java.util.List;

import com.jxlg.entity.User;

/**
 * 
 * 用户表实体访问层
 * 
 * @author feng
 * 
 */
public interface UserDao {
	// 添加用户
	public int addUser(User user);
}
