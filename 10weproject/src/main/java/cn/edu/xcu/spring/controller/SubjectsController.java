package cn.edu.xcu.spring.controller;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.edu.xcu.spring.entity.Subjects;
import cn.edu.xcu.spring.service.ISubjectsService;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Yanzhichu  zhangsan  snaye
 * @since 2019-11-15
 */

@RestController
@RequestMapping("/subjects")
public class SubjectsController {
	@Autowired
	private ISubjectsService iSubjectsService;
	@RequestMapping("/findAll")
	
	public List<Subjects> findAll(){
		return iSubjectsService.list();
	}
}

