package com.kriaa89.displaydate.controllers;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	@RequestMapping("/date")
	public String date(Model model) {
		model.addAttribute("currentDate", new Date());
		return "date.jsp";
	}
	@RequestMapping("/time")
	public String time(Model model) {
		model.addAttribute("currentTime", new Date());
		return "time.jsp";
	}
	
}
