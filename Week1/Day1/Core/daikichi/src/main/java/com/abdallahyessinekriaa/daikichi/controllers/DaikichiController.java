package com.abdallahyessinekriaa.daikichi.controllers;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class DaikichiController {
	
	@RequestMapping("/Daikichi")
	public String welcom() {
		return "Welcom!";
	}
	@RequestMapping("/Daikichi/today")
	public String today() {
		return "Today you will find luck in all your endeavors!'!";
	}
	@RequestMapping("/Daikichi/tomorrow")
	public String tomorrow() {
		return "Tomorrow, an opportunity will arise, so be sure to be open to new ideas!";
	}
	
}
