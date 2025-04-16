package com.savetravels.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.savetravels.models.Expense;
import com.savetravels.services.ExpenseService;

import jakarta.validation.Valid;

@Controller
public class ExpenseController {
	private final ExpenseService expenseService;
	
	public ExpenseController(ExpenseService expenseService) {
		this.expenseService = expenseService;
	}
	@GetMapping("/")
	public String index(Model model, @ModelAttribute("expense") Expense expense) {
		model.addAttribute("expenses", expenseService.allExpense());
		return "index";
	}
	@PostMapping("/expenses")
	public String create(@Valid @ModelAttribute("expense") Expense expense, BindingResult result, Model model) {
	    if (result.hasErrors()) {
	        model.addAttribute("expenses", expenseService.allExpense());
	        return "index";
	    }
	    expenseService.createExpense(expense);
	    return "redirect:/";
	}
	@GetMapping("/expenses/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		Expense expense = expenseService.findExpense(id);
		if (expense != null) {
			model.addAttribute("expense", expense);
			return "show";
		}
		return "redirect:/";
	}
	@GetMapping("/expenses/{id}/edit")
	public String edit(@PathVariable("id") Long id, Model model) {
		Expense expense = expenseService.findExpense(id);
		if (expense != null) {
			model.addAttribute("expense", expense);
			return "edit";
		}
		return "redirect:/";
	}
	@DeleteMapping("/expenses/{id}")
	public String destroy(@PathVariable("id") Long id) {
		expenseService.deleteExpense(id);
		return "redirect:/";
	}
	
	@PutMapping("/expenses/{id}")
	public String update(@Valid @ModelAttribute("expense") Expense expense, BindingResult result)  {
		if(result.hasErrors()) {
			return "edit";
		}
		expenseService.UpdateExpense(expense);
		return "redirect:/";
	}
	
	
}
