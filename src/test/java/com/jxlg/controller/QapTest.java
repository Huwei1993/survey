package com.jxlg.controller;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jxlg.entity.Qap;
import com.jxlg.service.IQapService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath*:config/applicationContext.xml",
		"classpath*:config/dispatcher-servlet.xml" })
public class QapTest {

	@Resource(name = "iQapService")
	private IQapService iQapService;

	/*@Test
	public void testFindByQaid(){
		Integer integ=2;
		Qap qap = iQapService.findPidByQid();
		System.out.println(qap.toString());
	}
	
	
	@Test
	public void testFindByQid(){
		List<Qap> qapList = iQapService.findByQid(5);
		for (Qap qap : qapList) {
			System.out.println(qap.toString());
		}
	}
	
	@Test
	public void testFindByPid(){
		List<Qap> qapList = iQapService.findByPid(2);
		for (Qap qap : qapList) {
			System.out.println(qap.toString());
		}
	}
	
	@Test
	public void testDeleteByQaid(){
		int n = iQapService.deleteByQaid(5);
		Assert.assertEquals(1, n);
	}
	
	@Test
	public void testDeleteByQid(){
		int n = iQapService.deleteByQid(5);
		Assert.assertEquals(2, n);
	}*/
}
