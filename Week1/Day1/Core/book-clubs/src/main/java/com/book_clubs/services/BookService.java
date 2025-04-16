package com.book_clubs.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.book_clubs.models.Book;
import com.book_clubs.repositories.BookRepository;

@Service
public class BookService {
	 @Autowired
	 private BookRepository bookRepo;
	 
	 public List<Book> allBooks() {
		 return bookRepo.findAll();
	 }
	 public Book findBookById(Long id) {
		 return bookRepo.findById(id).orElse(null);
	 }
	 public Book saveBook(Book book) {
		 return bookRepo.save(book);
	 }
	 public void deleteBook(Long id) {
		 bookRepo.deleteById(id);
	 }
	 // method to update book
	 public Book updateBook(Book book) {
		 return bookRepo.save(book);
	 }
	 
}
