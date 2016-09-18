package com.jxlg.service;

import java.util.List;

import com.jxlg.entity.Problem;
import com.jxlg.entity.Problem;
import com.jxlg.utils.ResultHelper;

/**
 * 问题服务接口
 * @author feng
 *
 */
public interface IProblemService {
	/*查询所有的问题*/
	public ResultHelper findAllProblem();
	
	/*分页查询符合条件问题*/
	public ResultHelper getProblemPager(Problem problem);
	
	/*更具pid获取问题信息*/
	public Problem getProblemById(int pid);
	
	/*新增问题*/
	public ResultHelper addProblem(Problem problem);
	
	/*修改问题*/
	public ResultHelper updateProblem(Problem problem);
	
	/*删除题*/
	public ResultHelper deleteQById(Integer[] pids);
	
	/*通过pids批量查询问题*/
	public List<Problem> getProblemByIds(Integer[] pids);
}
