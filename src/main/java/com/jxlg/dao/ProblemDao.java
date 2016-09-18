package com.jxlg.dao;

import java.util.List;

import com.jxlg.entity.Problem;
import com.jxlg.entity.Problem;

/**
 * 问题表数据访问层
 * @author feng
 * 
 *
 */
public interface ProblemDao {
	/*查询所有的问题*/
	public List<Problem> findAllProblem();
	
	/*获取符合条件的问题数量*/
	public int getTotalProblems(Problem Problem);
	
	/*分页查询符合条件的问题*/
	public List<Problem> findProblemPager(Problem problem);
	
	/*更具qid获取问题信息*/
	public Problem getProblemById(int pid);
	
	/*新增问题*/
	public int addProblem(Problem problem);
	
	/*修改问题表*/
	public int updateProblem(Problem problem);
	
	/*删除问题表*/
	public int deletePById(Integer[] pids);
	
	/*通过pids批量查询问题*/
	public List<Problem> getProblemByIds(Integer[] pids);

}
