package com.jxlg.service;

import java.util.List;

import com.jxlg.entity.Qap;
import com.jxlg.utils.ResultHelper;

/**
 * 问卷表-问题关系服务接口
 * @author feng
 *
 */
public interface IQapService {
	/*通过qid查询所有的表-题关系*/
	public Integer[] findPidByQid(Integer qid);
	
	/*通过qid和pid联合查询qaid*/
	public Integer[] findQaid(Integer qid,Integer pid);
	
	/*批量添加关系*/
	public ResultHelper addQap(List<Qap> qapList);
}
