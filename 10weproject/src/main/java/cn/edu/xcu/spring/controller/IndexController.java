package cn.edu.xcu.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping("/tomain")
	public String tomain() {
		return "main";
	}
}
