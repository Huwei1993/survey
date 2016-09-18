package com.jxlg.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jxlg.dao.UserDao;
import com.jxlg.entity.User;
import com.jxlg.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {
	@Resource
	private UserDao userDao;

	@Override
	public int addUser(User user) {
		System.out.println("-------" + user.toString());
		return userDao.addUser(user);
	}

}
