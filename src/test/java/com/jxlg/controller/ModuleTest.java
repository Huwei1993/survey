package com.jxlg.controller;

import static org.junit.Assert.*;

import java.io.InputStream;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jxlg.dao.ModuleDao;
import com.jxlg.entity.Module;
import com.jxlg.entity.Questionnaire;
import com.jxlg.service.IModuleService;
import com.jxlg.service.IProblemService;
import com.jxlg.utils.ResultHelper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath*:config/applicationContext.xml",
		"classpath*:config/dispatcher-servlet.xml" })
public class ModuleTest {
	
	@Resource(name = "iModuleService")
	private IModuleService iModuleService;
	
	@Test
	public void testFindAllModule() throws Exception {
		ResultHelper  list = iModuleService.findAllMudole();
	}
	
	
	@Test
	public void testaddModule() throws Exception {
		Module module3 = new Module("xuanzeti", true,"说明");
		int n = iModuleService.addModule(module3);
		System.out.println(n);
	}
	
	
	@Test
	public void testdeleteModuleById() throws Exception {
		int n = iModuleService.deleteModuleById(1);
		System.out.println(n);
	}
	
	@Test
	public void testupdateModuleById() throws Exception {
		
		for(int i=5;i<100;i++){
		Module module = new Module(i,"判断题", false, "关乎民生类"+i);
		int n = iModuleService.updataModuleById(module);
		}
		System.out.println("修改成功");
	}
	/*根据id查询*/
	@Test
	public void testfindModuleById() throws Exception {
		/*ModuleControllDate moduleControllDate = new ModuleControllDate();
		moduleControllDate.getModuleById(56);*/
		Module module  = iModuleService.findMudoleById(50);
		System.out.println(module);
		
		System.out.println("测试成功");
	}
	
	
}
