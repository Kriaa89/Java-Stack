package com.book_clubs.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.book_clubs.models.Book;



public interface BookRepository extends CrudRepository<Book, Long>{
	List<Book> findAll(); 
}
