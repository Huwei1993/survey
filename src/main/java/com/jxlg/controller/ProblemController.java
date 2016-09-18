package com.jxlg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jxlg.entity.Problem;
import com.jxlg.service.IProblemService;

/**
 * 
 * 版权： 胡伟
 * @author 胡伟
 * @sub内容：前台在线调查问卷的控制台 
 * @Time :2016年7月17日  @时间 下午9:03:26
 *
 */
@Controller
@RequestMapping("problem")
public class ProblemController {
	@Autowired

	private IProblemService iProblemService;
	@RequestMapping("turn")
	@ResponseBody
	public ModelAndView online_web(Problem problem ){
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("12356");
		modelAndView.setViewName("web");
		return modelAndView;
	}
	
	/**
	 *根据试卷的Id查询卷面题目
	 */
	
	@RequestMapping("/surveyId")
	public ModelAndView findBySurveyId() throws Exception{
		// 参数 Problem  problem
		/*problem = new Problem();*/
		System.out.println("进入成功！！");
		ModelAndView modelAndView = new ModelAndView();
		Integer[] pids= {1,2,3,4,5,6}; // 设定查询的id数组
		List<Problem>  list = iProblemService.getProblemByIds(pids);
		System.out.println(list.toString());
		// 遍历查询到的数组
		for (int i = 1; i <= pids.length; i++) {
			modelAndView.addObject("list"+i, list.get(i-1));
		}
		modelAndView.setViewName("web");
		return  modelAndView;
	} 
	
}
