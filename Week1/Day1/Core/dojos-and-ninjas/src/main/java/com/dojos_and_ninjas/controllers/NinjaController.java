package com.dojos_and_ninjas.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dojos_and_ninjas.models.Ninja;
import com.dojos_and_ninjas.services.DojoService;
import com.dojos_and_ninjas.services.NinjaService;

import jakarta.validation.Valid;

@Controller
public class NinjaController {
	private final NinjaService ninjaService;
	private final DojoService dojoService;
	
	public NinjaController(NinjaService ninjaService, DojoService dojoService) {
		this.ninjaService = ninjaService;
		this.dojoService = dojoService;
	}
	@GetMapping("/ninjas/new") 
	public String newNninja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		model.addAttribute("dojos", dojoService.allDojos());
		return "newNinja";
	}
	@PostMapping("/ninjas")
	public String createNinja(
	        @RequestParam("dojo") Long dojoId,
	        @Valid @ModelAttribute("ninja") Ninja ninja,
	        BindingResult result, 
	        Model model) {
	    if (result.hasErrors()) {
	        model.addAttribute("dojos", dojoService.allDojos());
	        return "newNinja";
	    } else {
	        ninja.setDojo(dojoService.findDojo(dojoId));
	        ninjaService.createNinja(ninja);
	        return "redirect:/dojos/" + dojoId;
	    }
	}

}
