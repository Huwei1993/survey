package com.jxlg.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jxlg.entity.Questionnaire;
import com.jxlg.service.IQuestionnaireService;
import com.jxlg.service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath*:config/applicationContext.xml",
		"classpath*:config/dispatcher-servlet.xml" })
public class QuestionnaireTest {

	@Resource(name = "iQuestionnaireService")
	private IQuestionnaireService iQuestionnaireService;

	@Test
	public void testAddQuestionnaire() {
		Date etime = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println(format.format(etime));
		
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		Date stime = new Date();
		System.out.println(format.format(stime));
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		Date ftime = new Date();
		System.out.println(format.format(ftime));
		Questionnaire q = new Questionnaire("90后的兴趣爱好", 2, etime, stime, ftime,
				"90后的兴趣爱好与精神状况", 1, true);
		int n = iQuestionnaireService.addQuestionnaire(q);
		System.out.println(n);

	}
	
	@Test
	public void testFindAllQuestionnaire(){
		List<Questionnaire> qlist = iQuestionnaireService.findAllQuestionnaire();
		for (Questionnaire questionnaire : qlist) {
			System.out.println(questionnaire.getQid());
		}
	}
	
	@Test
	public void testFindQuestionnaire(){
		Date etime = new Date();
		Date stime = new Date();
		Date ftime = new Date();
		//默认插入的id为0，表示不以id为条件
		Questionnaire q = new Questionnaire(0,"兴趣", 0, etime, stime, ftime,
				"兴趣", 1, true);
		List<Questionnaire> qlist = iQuestionnaireService.findQuestionnaire(q);
		for (Questionnaire questionnaire : qlist) {
			System.out.println(questionnaire.toString());
		}
	}
	
	@Test
	public void testUpdateQuestionnaire(){
		Date etime = new Date();
		Date stime = new Date();
		Date ftime = new Date();
		Questionnaire q = new Questionnaire(3,"兴趣", 2, etime, stime, ftime,
				"兴趣", 1, true);
		int n = iQuestionnaireService.updateQuestionnaire(q);
		System.out.println(n);
	}
	
	@Test
	public void testDeleteQById(){
		int n = iQuestionnaireService.deleteQById(3);
		System.out.println(n);
	}

}
