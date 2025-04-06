package com.kriaa89.counter.controllers;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CounterController {
	@RequestMapping("/")
	public String index(HttpSession session){
		 if(session.getAttribute("count") == null) {
			 session.setAttribute("count", 0);
		 } else {
			 Integer count = (Integer) session.getAttribute("count");
			 session.setAttribute("count", count + 1);
		 }
		 return "index.jsp";
	}
	@RequestMapping("/counter")
	public String counter(HttpSession session, Model model) {
		Integer currentCount = 0;
		if(session.getAttribute("count") != null) {
			currentCount = (Integer) session.getAttribute("count");
		}
		model.addAttribute("count", currentCount);
		return "counter.jsp";
	}
	@RequestMapping("/reset")
	public String reset(HttpSession session) {
		session.setAttribute("count", 0);
		return "redirect:/counter";
	}
	
}
