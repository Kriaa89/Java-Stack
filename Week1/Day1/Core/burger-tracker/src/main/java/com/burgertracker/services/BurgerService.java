package com.burgertracker.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.burgertracker.models.Burger;
import com.burgertracker.repositories.BurgerRepository;

@Service
public class BurgerService {
	private final BurgerRepository burgerRepository;
	
	public BurgerService(BurgerRepository  burgerRepository) {
		this.burgerRepository = burgerRepository;
	}
	
	public List<Burger> allBurgers() {
		return burgerRepository.findAll();
	}
	public Burger createBurger(Burger burger) {
		return burgerRepository.save(burger);
	}
	public Burger findBurger(long id) {
		return burgerRepository.findById(id).orElse(null);
	}
	public Burger updateBurger(Burger burger) {
		return burgerRepository.save(burger);
	}
}
