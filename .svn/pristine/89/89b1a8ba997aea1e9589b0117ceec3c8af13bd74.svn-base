package com.jxlg.controller;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jxlg.service.IUserService;
import com.jxlg.entity.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath*:config/applicationContext.xml",
		"classpath*:config/dispatcher-servlet.xml" })
public class UserTest {

	@Resource
	private IUserService userService;

	@Test
	public void testConn() {
		System.out.println("sssss");
	}

	@Test
	public void addUser() {
		User user = new User("1555155","5645644", "5646546", "伟哥", "1764@qq.com", 2);
		userService.addUser(user);
		System.out.println("添加成功。。。");
	}
}
