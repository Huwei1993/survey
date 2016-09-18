package com.jxlg.service;

import java.util.List;
import java.util.zip.ZipException;

import org.springframework.web.bind.annotation.InitBinder;

import com.jxlg.entity.Module;
import com.jxlg.utils.ResultHelper;

public interface IModuleService {
	// 查询所有的模板内容
	public ResultHelper findAllMudole() throws Exception;
	// 根据Id查询
	public Module findMudoleById(int mid) throws Exception;
	// 添加模板
	
	public int addModule(Module module);
	
	/**
	 * 
	 * @param mid  需要删除的mid
	 * @return
	 */
	public int deleteModuleById(int mid);
	
	/**
	 * 更新用户
	 * @param module
	 * @return
	 */
	public int updataModuleById(Module module);
	
	
	/**
	 * 获取页面
	 * @param module
	 * @return
	 * @throws Exception
	 */
	public ResultHelper getModulePages(Module module)throws Exception ;
	
}
