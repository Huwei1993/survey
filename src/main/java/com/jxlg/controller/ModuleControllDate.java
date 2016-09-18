package com.jxlg.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.swing.text.View;

import org.junit.runners.Parameterized.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jxlg.entity.Module;
import com.jxlg.service.IModuleService;
@Controller
@RequestMapping("/module")
public class ModuleControllDate {
	@Autowired
	private IModuleService iModuleService;
	
	@RequestMapping("/turn")
	@ResponseBody
	public ModelAndView turnToModule_list() {
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("12356");
		modelAndView.setViewName("module_list2");
		System.out.println("moduleAndView");
		return modelAndView;
	}
	
	@RequestMapping("/findAllModule")
	@ResponseBody
	public Object findAllMudole() throws Exception {
		
		return iModuleService.findAllMudole();
	}
	
	
	// 按条件分页查询用户
	@RequestMapping("/Pager")
	@ResponseBody
	public Object getUsersPager(Module  module) throws Exception {
		System.out.println("pager成功！！");
		return iModuleService.getModulePages(module);
	}
	

	// 根据ID获取用户详细信息
	@RequestMapping("/query")
	@ResponseBody
	public ModelAndView getModuleById(int id) throws Exception {
		// 请求转发，跳转到userinfo.jsp并传递查找到的用户信息
		Map<String, Object> data = new HashMap<String, Object>();
		System.out.println("获取data");
		data.put("module", iModuleService.findMudoleById(id));
		// 跳转到module_list2.jsp页面
		System.out.println("查询成功！！");
		data.get("module");
		return new ModelAndView("module_list2", data);
	}
		
	

	/*根据id增加模板内容*/

	@RequestMapping("/add")
	@ResponseBody
	public int addModelById(Module module) throws Exception{
		return iModuleService.addModule(module);
	}
	
	/*根据id修改模板内容*/

	@RequestMapping("/update")
	@ResponseBody
	public int updateModelById(Module module) throws Exception{
		return iModuleService.updataModuleById(module);
	}
	
	
	/*根据id删除模板内容*/

	@RequestMapping("/del")
	@ResponseBody
	public int delModelById(int id) throws Exception{
		System.out.println("id");
		return iModuleService.deleteModuleById(id);
		
	}
	
	/**
	 * 接收提交过来的添加模板数据
	 */
	@RequestMapping(value="/add_module")
	public ModelAndView addModul(Module module){
		System.out.println("添加中，请稍后。。。");
		ModelAndView mv = new ModelAndView();
		if(module != null){
			int i = iModuleService.addModule(module);
			mv.addObject("turn", "数据添加成功！");
			// mv.setViewName("add_module_success");
			return mv;
		}else {
//			mv.setViewName("add_module_fail");
			mv.addObject("turn", "添加失败！！");
			
			return mv;
		}
	}
}
