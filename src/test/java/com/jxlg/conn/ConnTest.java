package com.jxlg.conn;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;



/**
 * 测试类
 * 
 * @author feng
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath*:config/applicationContext.xml",
		"classpath*:config/dispatcher-servlet.xml" })
public class ConnTest {
	@Test
	public void testConn(){
		System.out.println("sssss");
	}

	
}
