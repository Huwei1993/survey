package com.jxlg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jxlg.service.IModuleService;

@Controller
@RequestMapping("module2")
public class ModuleController {
	@Autowired
	private IModuleService imoduleServic;
/**
 * 失效
 * @return
 * @throws Exception
 */
	@RequestMapping("/findAllModule————")
	@ResponseBody
	public Object findAllMudole() throws Exception {

		return imoduleServic.findAllMudole();
	}

}
