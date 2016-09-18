package com.jxlg.service.impl;

import java.io.FileWriter;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;









import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.jxlg.dao.ModuleDao;
import com.jxlg.entity.Module;
import com.jxlg.service.IModuleService;
import com.jxlg.utils.Constant;
import com.jxlg.utils.ResultHelper;
@Service(value = "iModuleService")
public class IModuleServiceImpl implements IModuleService{

	@Resource(name = "moduleDao")	
	private ModuleDao moduleDao;
	private Constant constant;
	
	@Override
	public ResultHelper findAllMudole() throws Exception {
		Module module = new Module();
//		module.setPageIndex(1);
//		module.setStart(10);
//		module.setLimit(20);
//		List<Module> list = moduleDao.getModulePages(module);
		List<Module> list = moduleDao.findAllModule();
		System.out.println(module.getType());
		return new ResultHelper( list,list.size(), constant.SUCCESS_CODE, constant.SUCCESS_MSG);
	}


	@Override
	public int addModule(Module module) {
		 int a =0 ;
		 a = moduleDao.addModule(module);
		return a;
	}


	@Override
	public int deleteModuleById(int mid) {
		// TODO Auto-generated method stub
		return moduleDao.deleteModuleById(mid);
	}


	@Override
	public int updataModuleById(Module module) {
		// TODO Auto-generated method stub
		return moduleDao.updataModuleById(module);
	}


	@Override
	public Module findMudoleById(int mid) throws Exception {
		// TODO Auto-generated method stub
		Module list = moduleDao.findMudoleById(mid);
		Module module = new Module();
		return  list;
	}
	
	
	public ResultHelper getModulePages(Module module) throws Exception {
		
		return  new ResultHelper(moduleDao.getModulePages(module), moduleDao.getTotaModule(module), Constant.SUCCESS_CODE, Constant.SUCCESS_MSG);
	}
	

}
