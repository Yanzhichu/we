package cn.edu.xcu.spring.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import cn.edu.xcu.spring.entity.Patient;
import cn.edu.xcu.spring.service.IPatientService;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author Yanzhichu zhangsan snaye
 * @since 2019-11-15
 */
@RestController
@RequestMapping("/patient")
public class PatientController {

	@Autowired
	private IPatientService iPatientService;

	// 参数page是当前的第几页，limit是每页有多少行
	// 并且page的默认值是1，非必填，limit也是非必填的，默认值可以自己设置
	@RequestMapping("/lists")
	public IPage<Patient> bookLists(@RequestParam(defaultValue = "", required = false) String name,
			@RequestParam(defaultValue = "-1", required = false) int tid,
			@RequestParam(defaultValue = "1", required = false) int page,
			@RequestParam(defaultValue = "2", required = false) int limit) {
		IPage<Patient> toOnePage = new Page<Patient>(page, limit);
		QueryWrapper<Patient> quer = new QueryWrapper<>();//动态SQL查询
		if (StringUtils.hasText(name)) {// name是否有数据
			quer.like("name", name);
		}
		if (tid != -1) {
			quer.eq("tid", tid);
		}
		IPage<Patient> resultPage = iPatientService.page(toOnePage, quer);
		return resultPage;
	}

	@RequestMapping("/delete")
	public Map<String, Object> doDel(int id) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		Boolean res = iPatientService.removeById(id);
		if (res) {// 拿到res，判断res的值是否为true，true表示已经删除，否则表示未删除
			resultMap.put("msg", "删除成功");
			resultMap.put("code", 1);
		} else {
			resultMap.put("msg", "删除失败");
			resultMap.put("code", -1);
		}
		return resultMap;
	}

	@RequestMapping("/update")
	public Map<String, Object> updata(Patient patient) {
		Map<String, Object> result = new HashMap<String, Object>();
		boolean res = iPatientService.saveOrUpdate(patient);
		if (res) {// 更新成功
			result.put("msg", "更新成功");
			result.put("code", 1);
		} else {
			result.put("msg", "更新失败");
			result.put("code", -1);
		}
		return result;
	}

}
