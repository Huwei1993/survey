package com.jxlg.dao;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jxlg.entity.Questionnaire;

/**
 * 调查表数据访问层
 * @author feng
 * 
 *
 */

public interface QuestionnaireDao {
	/*查询所有的问卷表*/
	
	public List<Questionnaire> findAllQuestionnaire();
	
	/*根据条件查询*/
	public List<Questionnaire> findQuestionnaire(Questionnaire questionnaire);
	
	/*新增问卷表*/
	public int addQuestionnaire(Questionnaire questionnaire);
	
	/*修改问卷表*/
	public int updateQuestionnaire(Questionnaire questionnaire);
	
	/*删除调查表*/
	public int deleteQById(int qid);
	
	

}
