package com.burgertracker.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.burgertracker.models.Burger;
import com.burgertracker.services.BurgerService;

import jakarta.validation.Valid;

@Controller
public class BurgerController {
	private final BurgerService burgerService;
	public BurgerController(BurgerService burgerService) {
		this.burgerService = burgerService;
	}
	@GetMapping("/")
	public String index(@ModelAttribute("burger") Burger burger, Model model) {
		model.addAttribute("burgers", burgerService.allBurgers());
		return "index";
	}
	@PostMapping("/burgers")
	public String createBurger(@Valid @ModelAttribute("burger") Burger burger, BindingResult result, Model model ) {
		if (result.hasErrors()) {
			model.addAttribute("burgers", burgerService.allBurgers());
			return "index";
		}
		burgerService.createBurger(burger);
		return "redirect:/";
	}
	@GetMapping("/burgers/{id}/edit")
	public String editBurger(@PathVariable("id") long id, Model model) {
		Burger burger = burgerService.findBurger(id);
		model.addAttribute("burger", burger);
		return "edit";
	}
	@PutMapping("/burgers/{id}")
	public String update(@Valid @ModelAttribute("burger") Burger burger, BindingResult result) {
		if (result.hasErrors()) {
			return "edit";
		}
		burgerService.updateBurger(burger);
		return "redirect:/";
	}
}
