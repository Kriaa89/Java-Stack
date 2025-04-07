package com.kriaa89.omikuji.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
	
	@GetMapping("/omikuji")
	public String omikuji(){
		return "index.jsp";
	}
	
	@PostMapping("/omikuji")
	public String processForm(
			@RequestParam("number") int number,
			@RequestParam("city") String city,
			@RequestParam("person") String person,
			@RequestParam("hobby") String hobby,
			@RequestParam("livingThing") String livingThing,
			@RequestParam("message") String message) {
		return "redirect:/omikuji/show";
		
	}
	@PostMapping("/omikuji/show")
	public String show() {
		return "show.jsp";
	}
	
	
	
}
