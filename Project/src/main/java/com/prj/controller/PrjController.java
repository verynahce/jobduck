package com.prj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PrjController {
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
}
