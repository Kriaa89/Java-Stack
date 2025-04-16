package com.dojos_and_ninjas.services;

import org.springframework.stereotype.Service;

import com.dojos_and_ninjas.models.Ninja;
import com.dojos_and_ninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	private final NinjaRepository ninjaRepository;
	
	public NinjaService(NinjaRepository ninjaRepository) {
		this.ninjaRepository = ninjaRepository;
	}
	
	public Ninja createNinja(Ninja ninja) {
	    return ninjaRepository.save(ninja);
	}
}
