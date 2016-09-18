package com.jxlg.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jxlg.entity.Qap;


/**
 * 调查表-问题关系表数据访问层
 * @author feng
 *
 */
public interface QapDao {

	/*通过qid查询所有的表-题关系*/
	public Integer[] findPidByQid(Integer qid);
	
	/*通过qid和pid联合查询qaid*/
	public Integer[] findQaid(@Param("qid")Integer qid,@Param("pid")Integer pid);
	
	/*批量添加关系*/
	public int addQap(List<Qap> qapList);
}
