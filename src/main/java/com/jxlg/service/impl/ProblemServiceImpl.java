package com.jxlg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jxlg.dao.ProblemDao;
import com.jxlg.entity.Problem;
import com.jxlg.service.IProblemService;
import com.jxlg.utils.Constant;
import com.jxlg.utils.ResultHelper;

/* 问题表服务接口实现
 * @author feng
 *
 */
@Service(value = "iProblemService")
public class ProblemServiceImpl implements IProblemService {

	@Resource(name = "problemDao")
	private ProblemDao problemDao;

	@Override
	public ResultHelper findAllProblem() {
		List<Problem> problemList = problemDao.findAllProblem();
		return new ResultHelper(problemList, problemList.size(),
				Constant.SUCCESS_CODE, Constant.SUCCESS_MSG);
	}

	@Override
	public ResultHelper getProblemPager(Problem problem) {
		return new ResultHelper(problemDao.findProblemPager(problem),
				problemDao.getTotalProblems(problem), Constant.SUCCESS_CODE,
				Constant.SUCCESS_MSG);
	}

	@Override
	public Problem getProblemById(int pid) {
		return problemDao.getProblemById(pid);
	}

	@Override
	public ResultHelper addProblem(Problem problem) {
		problemDao.addProblem(problem);
		return new ResultHelper(Constant.SUCCESS_CODE, Constant.SUCCESS_MSG);
	}

	@Override
	public ResultHelper updateProblem(Problem problem) {
		problemDao.updateProblem(problem);
		return new ResultHelper(Constant.SUCCESS_CODE, Constant.SUCCESS_MSG);
	}

	@Override
	public ResultHelper deleteQById(Integer[] pids) {
		problemDao.deletePById(pids);
		return new ResultHelper(Constant.SUCCESS_CODE, Constant.SUCCESS_MSG);
	}

	@Override
	public List<Problem> getProblemByIds(Integer[] pids) {

		return problemDao.getProblemByIds(pids);
	}

}
