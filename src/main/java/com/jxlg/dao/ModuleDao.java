package com.jxlg.dao;

import java.util.List;

import com.jxlg.entity.Module;
import com.jxlg.utils.ResultHelper;

/**
 * 模板表数据访问层
 * @author feng
 *
 *
 */
public interface ModuleDao {
	/*查询所有模板*/
	public List<Module> findAllModule();
	
	/*查询模板*/
	public Module findMudoleById(int mid);
	
	/*添加模板*/
	public int addModule(Module module);
	
	/*删除模板*/
	public int deleteModuleById(int mid );
	
	/*更新模板*/
	public int updataModuleById(Module module );
	
	/**
	 * 获取module的总量
	 * @return
	 */
	public int getTotaModule(Module module);
	/**
	 * 获取查询页码条件
	 * @param module
	 * @return
	 */
	public List<Module> getModulePages(Module module);
	
}
