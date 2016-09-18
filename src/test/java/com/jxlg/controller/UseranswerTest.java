package com.jxlg.controller;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jxlg.entity.Problem;
import com.jxlg.entity.Useranswer;
import com.jxlg.service.IProblemService;
import com.jxlg.service.IUseranswerService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath*:config/applicationContext.xml",
		"classpath*:config/dispatcher-servlet.xml" })
public class UseranswerTest {

	@Resource(name = "iUseranswerService")
	private IUseranswerService iUseranswerService;


	@Test
	public void testFindUseranswer(){
		Useranswer u = new Useranswer(0, 0, 0, null, 0, "男");
		List<Useranswer> useranswerList = iUseranswerService.findUseranswer(u);
		for (Useranswer useranswer : useranswerList) {
			System.out.println(useranswer.toString());
		}
	}
	
	
	
	
	

	@Test
	public void testAddUseranswer() {
		Useranswer u = new Useranswer(0, 4, "么么哒", 19, "男");
		int n = iUseranswerService.addUseranswer(u);
		System.out.println(n);
	}



}
