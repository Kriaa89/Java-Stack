package com.kriaa89.hellohuman.controllers;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
@RestController 
public class HelloHumanController {
	@RequestMapping("/")
	public String index(@RequestParam(value="name", required=false)String name) {
		if(name == null) {
		  return "hello human";
		} else {
			return "Hello" + name;
		}
	}
    
}
