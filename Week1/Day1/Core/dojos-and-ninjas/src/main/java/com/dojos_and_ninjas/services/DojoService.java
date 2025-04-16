package com.dojos_and_ninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dojos_and_ninjas.models.Dojo;
import com.dojos_and_ninjas.repositories.DojoRepository;

@Service
public class DojoService {
    private final DojoRepository dojoRepository;

    public DojoService(DojoRepository dojoRepository) {
        this.dojoRepository = dojoRepository;
    }

    public List<Dojo> allDojos() {
        return (List<Dojo>) dojoRepository.findAll();
    }

    public Dojo createDojo(Dojo dojo) {
        return dojoRepository.save(dojo);
    }

    public Dojo findDojo(Long id) {
        return dojoRepository.findById(id).orElse(null);
    }
}
