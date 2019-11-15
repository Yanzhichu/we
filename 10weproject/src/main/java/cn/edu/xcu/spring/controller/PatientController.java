package cn.edu.xcu.spring.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import cn.edu.xcu.spring.entity.Patient;
import cn.edu.xcu.spring.service.IPatientService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Yanzhichu  zhangsan  snaye
 * @since 2019-11-15
 */
@Controller
@RequestMapping("/patient")
public class PatientController {
	
	@Autowired
	private IPatientService iPatientService;
	//参数page是当前的第几页，limit是每页有多少行
	//并且page的默认值是1，非必填，limit也是非必填的，默认值可以自己设置
	@RequestMapping("/lists")
	@ResponseBody
	public IPage<Patient> bookLists(@RequestParam(defaultValue = "1",required = false)int page,@RequestParam(defaultValue = "2",required = false)int limit) {
		IPage<Patient> toOnePage = new Page<Patient>(page,limit);
		IPage<Patient> resultPage=iPatientService.page(toOnePage);
 		return resultPage;
	}

}

