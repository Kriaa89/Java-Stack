package com.book_clubs.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.book_clubs.models.User;

public interface UserRepository extends CrudRepository<User, Long> {
	Optional<User>findByEmail(String email);

}
