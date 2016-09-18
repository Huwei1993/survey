package com.jxlg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jxlg.dao.QapDao;
import com.jxlg.entity.Problem;
import com.jxlg.entity.Qap;
import com.jxlg.service.IQapService;
import com.jxlg.utils.Constant;
import com.jxlg.utils.ResultHelper;
/**
 * 问卷表-问题关系服务接口实现
 * @author feng
 *
 */
@Service(value = "iQapService")
public class QapServiceImpl implements IQapService {

	@Resource(name = "qapDao")
	private QapDao qapDao;

	@Override
	public ResultHelper addQap(List<Qap> qapList) {
		qapDao.addQap(qapList);
		return new ResultHelper(Constant.SUCCESS_CODE, Constant.SUCCESS_MSG);
	}



	@Override
	public Integer[] findPidByQid(Integer qid) {
		return qapDao.findPidByQid(qid);
	}



	@Override
	public Integer[] findQaid(Integer qid, Integer pid) {
		return qapDao.findQaid(qid, pid);
	}



}
