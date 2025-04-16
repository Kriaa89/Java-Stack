package com.savetravels.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.savetravels.models.Expense;
import com.savetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	private final ExpenseRepository expenseRepository;
	
	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository = expenseRepository;
	}
	
	public List<Expense> allExpense() {
		return expenseRepository.findAll();
	}
	public Expense createExpense(Expense expense) {
		return expenseRepository.save(expense);
	}
	public Expense findExpense(Long id) {
		return expenseRepository.findById(id).orElse(null);
	}
	public Expense UpdateExpense(Expense expense) {
		return expenseRepository.save(expense);
	}
	public void  deleteExpense(Long id) {
		expenseRepository.deleteById(id);
	}
	
}
