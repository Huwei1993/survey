package com.jxlg.controller;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jxlg.entity.Problem;
import com.jxlg.service.IProblemService;
import com.jxlg.utils.ResultHelper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath*:config/applicationContext.xml",
		"classpath*:config/dispatcher-servlet.xml" })
public class ProblemTest {

	@Resource(name = "iProblemService")
	private IProblemService iProblemService;

	@Test
	public void testFindAllProblem() {
		ResultHelper  problemList = iProblemService.findAllProblem();
		/*for (Problem problem : problemList) {
			System.out.println(problem.toString());
		}*/
		System.out.println(problemList);
	}

	@Test
	public void testFindProblem(){
		// Problem p = new Problem(0, "看", "看", "看", "看","看" , 0, 0, 0, 0, 0, true);
			Problem p = new Problem();
			Integer[] pids= {1,2,3,4,5,6};
		List<Problem> list = iProblemService.getProblemByIds(pids);
		for(Problem problem:list){
			System.out.println(list);
		}
	}

	@Test
	public void testAddProblem() {
		Problem p = new Problem("张涛能坚持多久", "5秒", "10秒", "15秒", "20秒",  1, true);
		ResultHelper helper = iProblemService.addProblem(p);
		System.out.println(helper);
	}

	@Test
	public void testUpdateProblem() {
		Problem p = new Problem(1,"胡伟多高", "120", "140", "160", "180", 1, 2, 3, 4, 1, true);
		ResultHelper  n = iProblemService.updateProblem(p);
		System.out.println(n);
	}

	@Test
	public void testDeleteProblemBypid() {
		
		Integer[] pids= {1,2,3,4,5,6};
		ResultHelper helper = iProblemService.deleteQById(pids);
		System.out.println(helper);
	}
	
	@Test
	public void testgetProblemByIds() throws Exception{
		Integer[] pids= {1,2,3,4,5,6};
		List<Problem> list =  iProblemService.getProblemByIds(pids);
		System.out.println(list.toString());
		System.out.println("查询成功");
	}

}
