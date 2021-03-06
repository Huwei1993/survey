package com.jxlg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jxlg.dao.UseranswerDao;
import com.jxlg.entity.Useranswer;
import com.jxlg.service.IUseranswerService;

/**
 * 用户答案服务接口的实现
 * 
 * @author feng
 * 
 */

public class UseranswerServiceImpl implements IUseranswerService {

	private UseranswerDao useranswerDao;

	// 条件查询用户答案
	@Override
	public List<Useranswer> findUseranswer(Useranswer useranswer) {
		return useranswerDao.findUseranswer(useranswer);
	}

	// 添加答案
	@Override
	public int addUseranswer(Useranswer useranswer) {
		return useranswerDao.addUseranswer(useranswer);
	}

}
